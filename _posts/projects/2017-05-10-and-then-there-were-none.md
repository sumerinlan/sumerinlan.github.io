---
# basic info
layout: post
title: And Then There Were None?
date: 2017-05-10 -0600
# page info
site: portfolio
type: Project
categories: [Games]
tags: [C#, Unity]
# project info
role: VR Developer
# content info
excerpt: A Movie-based VR Game with Immersive Experience
---

We write the game in recognition of the mystery novel **And Then There Were None** written by Agatha Christie. However, we give the user an opportunity to change the tragic ending of the story. You are trapped on a cruise with several other people, one of which is a serial killer. Given a poem as a clue, you need to find certain objects to prevent the death of other people and yourself, and eventually leave the cruise. The game allows users to have first person perspective experience solving riddles, looking for objects and saving people’s lives.

Each level is a scene for players to find certain objects in a limited time. The player cannot physically move with the headset but can use the handler to move the character within the scene. The player can rotate his/her head to look around in the room. Some objects can be triggered to open. Player actions (opening boxes, picking up objects, etc.) are represented and recognized by staring at a region and using a handler.

The player will be given a related line of poems and instructions about possible objects to find, in the form of a monologue, for each level. The player then explores the given scene to complete the task using the headset and the handler. If the player finishes the job of solving the riddle and finding objects, he will get a message that he has passed the level and start the next level. If he successfully saves all lives on the cruise, the game will end, and the player wins.

The constructions of the scenes and interactions taken by the player are designed to be user-friendly and comforting. For example, we decided not to include the unnecessary zoom-in functionality to decrease the potential feeling of sickness. The length of one round of the game will be no more than 10-15 minutes. The construction of the scene will be 3D based, setting the location, rotation, and transformation of the objects in 3D space. To visualize conversations, we use Dialogue System, which is not popular in use and offers scarce resources but brings immersion. We also use animation to enhance the VR experience.
