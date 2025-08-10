#!/bin/sh

echo "# Courses_online" >> README.md
git init "Courses_online"
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:VanYoshiko/Courses_online.git
git push -u origin main
