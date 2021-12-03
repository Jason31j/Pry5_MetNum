function xs = EuMe(f, xn, conIniX, conIniY, n)

  h = (xn - conIniX)/n 
  xa = 0;
  ya = 0;
  printf("i \t x \t y \n")
  for(i = 0:8)
    if(i == 0)
      x = conIniX;
      y = conIniY;
     else
      x = xa + h;
      y = ya + h*(( feval(f, xa, ya) + feval(f, x, ya + h*feval(f, xa, ya)) )/2);
     endif

    printf("%d \t %d\t %d\n", i, x, y)
    xa = x;
    ya = y;
  endfor
endfunction