#!/usr/bin/ruby -w
# Header adder
# adds some generic headers to your Markdown files for Octopress
# use/branch/distribute as you see fit

Dir["*.markdown"].each { |ourfile|

	content = File.read(ourfile)
	
	newcontent = "---
layout: post
title: \"TITLE\"
date: 2012-10-23 01:38 
comments: true
author: Your Name
categories:
- Your Category
permalink: \/permalink
---\n\n" + content
	
	File.open(ourfile, 'r+') { |file| file.write(newcontent) }
	
}

