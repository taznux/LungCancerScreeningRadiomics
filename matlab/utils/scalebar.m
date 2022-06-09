function scalebar(xc,yc,zc, w, units)
  x = [xc, xc-w, nan, xc, xc  , nan, xc, xc  ];
  y = [yc, yc  , nan, yc, yc-w, nan, yc, yc  ];
  z = [zc, zc  , nan, zc, zc  , nan, zc, zc+w];
  hg = hggroup;
  hl = line(x,y,z);
  hl.LineWidth = 3;
  hl.Clipping = 'off';
  hl.Color = [0.3,0.3,0.3];
  ht = text(xc+0.2,yc-0.2,zc+0.2,[num2str(w), ' ', units]);
  ht.FontSize = 20;
  ht.Color = 'black';
  ht.VerticalAlignment = 'bottom';
  ht.Clipping = 'off';
  ht.Parent = hg;
  htx = text(xc-w,yc,zc, 'x');
  htx.FontSize = 16;
  htx.VerticalAlignment = 'top';
  hty = text(xc,yc-w,zc, 'y');
  hty.FontSize = 16;
  hty.VerticalAlignment = 'top';
  htz = text(xc,yc,zc+w, 'z');
  htz.FontSize = 16;
  htz.VerticalAlignment = 'bottom';
  hl.Parent = hg;
  htx.Parent = hg;
  hty.Parent = hg;
  htz.Parent = hg;