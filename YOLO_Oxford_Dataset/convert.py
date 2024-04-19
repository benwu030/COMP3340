# A program to convert Oxford 17 flower dataset to be used with YOLOV5 training
# Oxford 17 Flowers dataset downloaded from: https://www.kaggle.com/datasets/datajameson/oxford-17-flowers-dataset

import os
import shutil
import random

classes = {
    "Bluebell": 0,
    "Buttercup": 1,
    "Coltsfoot": 2,
    "Cowslip": 3,
    "Crocus": 4,
    "Daffodil": 5,
    "Daisy": 6,
    "Dandelion": 7,
    "Fritillary": 8,
    "Iris": 9,
    "Lilyvalley": 10,
    "Pansy": 11,
    "Snowdrop": 12,
    "Sunflower": 13,
    "Tigerlily": 14,
    "Tulip": 15,
    "Windflower": 16,
}


def get_all_images():
    # Get all images in /Oxford 17 Flowers
    images = []
    for root, dirs, files in os.walk("Oxford 17 Flowers"):
        for file in files:
            if file.endswith(".jpg"):
                images.append(
                    {
                        "path": os.path.join(root, file),
                        "class": classes[root.split("/")[-1]],
                    }
                )
    return images


def write_label_for_image(image, path):
    # Create label for image
    destination = path + "/" + image["path"].split("/")[-1].replace(".jpg", ".txt")
    with open(destination, "w") as f:
        f.write(f"{image['class']} 0.5 0.5 1 1")


def write_image(image, path):
    # Copy image to new path
    destination = path + "/" + image["path"].split("/")[-1]
    shutil.copy(image["path"], destination)


def shuffle_images(images, train, val, test):
    # Shuffle images and split them into train, val, test
    random.shuffle(images)
    train = int(len(images) * train)
    val = int(len(images) * val)
    test = len(images) - (train + val)
    train_images = images[:train]
    val_images = images[train : train + val]
    test_images = images[train + val : train + val + test]
    return train_images, val_images, test_images


if __name__ == "__main__":
    print("Converting...")
    images = get_all_images()
    (train, val, test) = shuffle_images(images, 0.8, 0.1, 0.1)

    # Remove directories if exists
    shutil.rmtree("data/", ignore_errors=True)
    # Create directories if not exists
    os.makedirs("data/images/train", exist_ok=True)
    os.makedirs("data/images/val", exist_ok=True)
    os.makedirs("data/images/test", exist_ok=True)
    os.makedirs("data/labels/train", exist_ok=True)
    os.makedirs("data/labels/val", exist_ok=True)
    os.makedirs("data/labels/test", exist_ok=True)
    # Copy dataset.yaml
    shutil.copy("dataset.yaml", "data/dataset.yaml")

    print("Writing train images...")
    for image in train:
        write_image(image, "data/images/train")
        write_label_for_image(image, "data/labels/train")

    print("Writing val images...")
    for image in val:
        write_image(image, "data/images/val")
        write_label_for_image(image, "data/labels/val")

    print("Writing test images...")
    for image in test:
        write_image(image, "data/images/test")
        write_label_for_image(image, "data/labels/test")

    print("Done!")
