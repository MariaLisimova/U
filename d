# import sys
from random import choice,randint
import pygame
import subprocess
window=pygame.display.set_mode((800,400))
window.fill((0,0,0))
pygame.display.update()
ball1=pygame.image.load("pngwing.com(17).png")
rec_ball1=ball1.get_rect(center=(150,150))
ball2=pygame.image.load("pngwing.com(18).png")
rec_ball2=ball2.get_rect(center=(300,150))
ball3=pygame.image.load("pngwing.com(19).png")
rec_ball3=ball3.get_rect(center=(450,150))
click_green=0
while True:
    for i in pygame.event.get():
        if i.type==pygame.QUIT:
            sys.exit()
        if i.type == pygame.MOUSEBUTTONDOWN:
            if i.button == 1 and rec_ball1.collidepoint(i.pos):
                window.fill((randint(0,255),randint(0,255),randint(0,255)))
            if i.button and rec_ball2.collidepoint(i.pos):
                click_green+=1
                if click_green%2==1:
                    pygame.display.set_mode((1000,400))
                    window.fill((0,0,0))
                else:
                    pygame.display.set_mode((800,400))
                    window.fill((0,0,0))
            if i.button == 1 and rec_ball3.collidepoint(i.pos):
                subprocess.Popen(["python","11.02.2023.2.py"])


    window.blit(ball1,rec_ball1)
    window.blit(ball2,rec_ball2)
    window.blit(ball3,rec_ball3)

    pygame.display.update()
