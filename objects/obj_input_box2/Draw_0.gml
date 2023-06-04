/// @description Draw
input_box_draw(xOffset,yOffset,boxSprite,autoHeight,fillInactiveCol,fillActiveCol,borderInactiveCol,borderActiveCol,textInactiveCol,textActiveCol,highlightCol,highlightAlpha,hideVbarXOffset,hideVbarYOffset);

draw_set_font(fnt_text);
draw_text(left+width+16,top+yOffset,"("+input+")");