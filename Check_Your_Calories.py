#!/usr/bin/env python3.11

import time

print("Welcome to: Should I Be Eating This?, The Calorie Counter")

time.sleep(5)

print("First you'll need to know how many grams of fat, carbohydrates, and protien are in your item")

time.sleep(5)

fat = int(input("How many grams of fat are in your item?: "))

carbohydrates = int(input("How many grams of carbohydrates are in your item?: "))

protein = int(input("How many grams of protein are in your item?: "))

print("The total calories for the item that you're thinking about eating is: ")

time.sleep(6)
calories = int((fat * 9) + (carbohydrates * 5) + (protein * 5))

print(calories)

