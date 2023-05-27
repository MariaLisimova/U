import sys
from random import choice,randint
import pygame
window=pygame.display.set_mode((800,800))
window.fill((255,255,255))
pygame.display.update()
ball1=pygame.image.load("pngwing.com(17).png")
ball2=pygame.image.load("pngwing.com(18).png")
ball3=pygame.image.load("pngwing.com(19).png")
ball=ball1
rect_ball=ball.get_rect(center=(100,100))

while True:
    for i in pygame.event.get():
        if i.type==pygame.QUIT:
            sys.exit()
        if i.type==pygame.MOUSEBUTTONDOWN:
            if i.button==1:
             window.blit(ball,i.pos)
            if i.button==2:
                ball=choice((ball1,ball2,ball3))
            if i.button==3:
                window.fill((randint(0,255),randint(0,255),randint(0,255)))


    if pygame.mouse.get_focused():
        coords=pygame.mouse.get_pos()
        rect_ball.centerx=coords[0]
        rect_ball.centery=coords[1]
        # window.fill((255,255,255))


    window.blit(ball,rect_ball)
    pygame.display.update()
