---
# basic info
layout: post
title: Material Synthesis Techniques from a Data-driven Perspective
date: 2019-12-13 -0800
# page info
type: Project
group: Stanford
categories: [Machine Learning]
tags: [Python, PyTorch]
# project info
role: Developer
source_code: https://github.com/sumerinlan/material-synthesis
report: http://cs229.stanford.edu/proj2019aut/data/assignment_308832_raw/26645663.pdf
# content info
excerpt: A pipeline that uses computer vision and generative models to generate color maps and normal maps at scale
excerpt_zh: 用计算机视觉和生成模型，批量生成颜色贴图和法线贴图的流程
archive: true
---

Rendering realistic 3D scenes requires rich, high-quality materials datasets, which are lacking. We propose to leverage recent progress in computer vision and generative models to generate materials (color maps and normal maps) at large scale from a data-driven perspective. Our pipeline consists of generative models that synthesize texture color maps and a prediction model that maps color maps to normal maps. We are able to generate large, seamless color and normal maps that look realistic, diverse, and can be directly rendered into 3D scenes.
