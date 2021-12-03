function xs = main(f)
  
  n = input("Ingrese la cantidad de intervalos deseados: ")
  xn = input("Ingrese el limite derecho al que se desea llegar: ");
  conIniX = input("Ingrese el punto inicial de X: ");
  conIniY = input("Ingrese la condicion inicial de Y: ");
  
  decision = menu('�Qu� m�todo desea utilizar?', {'M�todo de Euler mejorado', 'M�todo de Runge Kutta'} );
  
  if decision == 1
    EuMe(f, xn, conIniX, conIniY, n)
  else
    RK4(f, xn, conIniX, conIniY, n)
  endif
  
endfunction