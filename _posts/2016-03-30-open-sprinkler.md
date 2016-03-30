---
layout: post
image: open_sprinkler.jpg
title:  "OpenSprinkler Pi"
date:   2016-03-30 10:00:00
permalink: open-sprinkler
text_color: white
---

There was a point in time where someone decided the optimal interface to control your sprinkler timer was a 12 position knob and two buttons. I'm not sure _what_ it's optimal for, but it's certainly not user experience. Perhaps it saved a nickle on the manufacturing costs.

When I bought my house I wanted to drastically change the landscaping in both the front and the back. One of the things this meant was that I would get the opportunity to install the irrigation system however I liked. In the end of the day, I might have overdone it.

My final installation has 11 valves:

* Front East Lawn
* Front West Lawn
* Front Drip Irrigation
* Front Trees
* Back lawn Zone 1
* Back lawn Zone 2
* Back lawn Zone 3
* Back Drip Irrigation
* Back Trees
* Garden Drip Irrigation
* [Misters](/surviving-the-heat)

When I started drawing out my irrigation system I wasn't sure exactly how I was going control this many zones. I know they make 12 zone sprinkler controllers, but I've never liked working with them. I wanted something better.

It turns out, I'm not alone. There are tons of people who have made [projects](http://www.instructables.com/id/Arduino-Sprinkler-System-Web-control/_) to [control](http://www.instructables.com/id/Arduino-sprinkler-valves-wifi/) [sprinklers](http://www.instructables.com/id/Arduino-Automatic-Watering-System-For-Plants/) through [code](http://www.instructables.com/id/How-to-make-a-Linux-powered-garden-sprinkler-syste/). Most of them are essentially relays hooked up to an Ardiuno or RaspberryPi. Some of them are even networked.

While this is definitely heading in the right direction, I didn't have the time to reinvent the wheel on this round. A little bit more searching lead me to the [OpenSprinkler](http://www.opensprinkler.com).

This was extremily appealing to me as even their [main product](https://opensprinkler.com/product/opensprinkler/) is just an Arduino with some custom software on it. I wanted something a little bit more flexible. And I really wanted to be able to write my code in Ruby. I love Ruby.

What I really wanted was something based on the RaspberryPi. A few months after I first came across OpenSprinkler they launched [OpenSprinkler Pi](https://opensprinkler.com/product/opensprinkler-pi/). It's exactly what it sounds like.  You provide a Raspberry Pi and they provide a daughter board that has 8 sprinkler zone outputs.

Since I have 11 zones, I needed to also purchase the [OS Zone Expander](https://opensprinkler.com/product/zone-expander/) which means I now have a whopping 24 outputs.

There's a [Python port](https://github.com/Dan-in-CA/OSPi) of the Arduino software that runs great on the OpenSprinkler Pi. And, they even have an [iOS app](https://itunes.apple.com/us/app/opensprinkler/id830988967?mt=8).

While it's not Ruby, Python is not a terrible choice.

I'm sure there will be a day when I want to add a feature or fix a bug, and when that day comes I'll be glad I have the OpenSprinkler Pi on my wall.

<div class="row">
  <img src="/images/posts/open_sprinkler_install.jpg">
</div>