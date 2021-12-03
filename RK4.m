function x = RK4(f, xn, conIniX, conIniY, n)
  k = [];
  xa = 0;
  ya = 0;
  c = " ";
  h = (xn + conIniX)/n 
  
  printf("%-4c i \t %-4c x \t %-4c y \t %-4c k1 \t %-4c k2 \t %-4c k3 \t %-4c k4 \n", c,c,c,c,c,c,c)
  
  for(i = 0:n)
    if(i == 0)
      x = conIniX;
      y = conIniY;
    else
      x = xa + h;
      y = ya + h/6*(k(1) + 2*k(2) + 2*k(3) + k(4));
    endif  
    
    if (i != n)
      k(1) = feval(f, x, y);
      k(2) = feval(f, x + 0.5 * h, y + 0.5 *k(1) * h);
      k(3) = feval(f, x + 0.5 * h, y + 0.5 * k(2) * h);
      k(4) = feval(f, x + h, y + k(3) * h);
    endif
    
    if(i != n)
      printf("%6.4d \t %6.4d \t %6.4d \t %6.4d \t %6.4d \t %6.4d \t %6.4d \n", i, x, y, k(1), k(2), k(3), k(4))
    else
      printf("%6.4d \t %6.4d \t %6.4d\n", i, x, y)
    endif
    
    xa = x;
    ya = y;
    
  endfor
  
endfunction