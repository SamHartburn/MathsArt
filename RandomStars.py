# -*- coding: utf-8 -*-
"""
Created on Wed Jun  9 10:00:25 2021

@author: sam
"""

from turtle import *
from random import *

colormode(255)
penup()
for x in range(-5,5):
    for y in range(-5,5):
        color((randint(0,255),randint(0,255),randint(0,255)), (randint(0,255),randint(0,255),randint(0,255)))
        setx(60*x)
        sety(60*y)
        pendown()
        begin_fill()
        fwd=randint(30,60)
        points=2*randint(2,6)+1
        turn=180-180/(points)
        print(turn)
        setheading(0)
        for k in range(points):
            forward(fwd)            
            left(180-180/(points))
        end_fill()
        penup()
done()

