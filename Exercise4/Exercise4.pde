PImage background;
float x, speedX;
Alphabet alphabet;

void setup() {
  size(800, 800, P2D);
  alphabet = new Alphabet();
  imageMode(CENTER);
  background = loadImage("background.jpg");
  
  x = 400;
  speedX = 3;

}

void draw() {

  image(background, x, 400, width, height);
  
  x += speedX;
  if (x > width - 175 || x < 175) {
    speedX *= -1;  
  }
  
  alphabet.draw();
}
class Alphabet {
  PShape a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z;

  Alphabet() {
      
    noFill();
    strokeWeight(25);

    stroke(random(255), random(255), random(255));
    a = createShape();
    a.beginShape();
    a.vertex(400, 150);
    a.vertex(200, 650);
    a.vertex(300, 400);
    a.vertex(500, 400);
    a.vertex(600, 650);
    a.endShape(CLOSE);
    
    stroke(random(255), random(255), random(255));
    b = createShape();
    b.beginShape();
    b.vertex(250, 150);
    b.vertex(250, 650);
    b.vertex(550, 525);
    b.vertex(300, 400);
    b.vertex(550, 275);
    b.endShape(CLOSE);
    
    stroke(random(255), random(255), random(255));
    c = createShape();
    c.beginShape();
    c.vertex(550, 150);
    c.vertex(250, 250);
    c.vertex(250, 550);
    c.vertex(550, 650);
    c.endShape();
    
    stroke(random(255), random(255), random(255));
    d = createShape();
    d.beginShape();
    d.vertex(250, 150);
    d.vertex(250, 650);
    d.vertex(550, 550);
    d.vertex(550, 250);
    d.endShape(CLOSE);
    
    stroke(random(255), random(255), random(255));
    e = createShape();
    e.beginShape();
    e.vertex(250, 150);
    e.vertex(250, 650);
    e.vertex(550, 650);
    e.vertex(250, 650);
    e.vertex(250, 400);
    e.vertex(450, 400);
    e.vertex(250, 400);
    e.vertex(250, 150);
    e.vertex(550, 150);
    e.endShape(CLOSE);
    
    stroke(random(255), random(255), random(255));
    f = createShape();
    f.beginShape();
    f.vertex(550, 150);
    f.vertex(250, 150);
    f.vertex(250, 400);
    f.vertex(450, 400);
    f.vertex(250, 400);
    f.vertex(250, 650);
    f.endShape();
    
    stroke(random(255), random(255), random(255));
    g = createShape();
    g.beginShape();
    g.vertex(400, 400);
    g.vertex(550, 400);
    g.vertex(500, 650);
    g.vertex(300, 650);
    g.vertex(250, 400);
    g.vertex(350, 150);
    g.vertex(550, 150);
    g.vertex(550, 175);
    g.endShape();
    
    stroke(random(255), random(255), random(255));
    h = createShape();
    h.beginShape();
    h.vertex(250, 150);
    h.vertex(250, 650);
    h.vertex(250, 400);
    h.vertex(550, 400);
    h.vertex(550, 650);
    h.vertex(550, 150);
    h.endShape();
    
    stroke(random(255), random(255), random(255));
    i = createShape();
    i.beginShape();
    i.vertex(250, 150);
    i.vertex(550, 150);
    i.vertex(400, 150);
    i.vertex(400, 650);
    i.vertex(550, 650);
    i.vertex(250, 650);
    i.endShape();
    
    stroke(random(255), random(255), random(255));
    j = createShape();
    j.beginShape();
    j.vertex(250, 150);
    j.vertex(550, 150);
    j.vertex(400, 150);
    j.vertex(400, 600);
    j.vertex(350, 650);
    j.vertex(300, 650);
    j.vertex(250, 600);
    j.endShape();
    
    stroke(random(255), random(255), random(255));
    k = createShape();
    k.beginShape();
    k.vertex(250, 150);
    k.vertex(250, 400);
    k.vertex(550, 150);
    k.vertex(280, 400);
    k.vertex(550, 650);
    k.vertex(250, 400);
    k.vertex(250, 650);
    k.endShape();
    
    stroke(random(255), random(255), random(255));
    l = createShape();
    l.beginShape();
    l.vertex(250, 150);
    l.vertex(250, 650);
    l.vertex(550, 650);
    l.endShape();
    
    stroke(random(255), random(255), random(255));
    m = createShape();
    m.beginShape();
    m.vertex(250, 650);
    m.vertex(250, 150);
    m.vertex(400, 550);
    m.vertex(550, 150);
    m.vertex(550, 650);
    m.endShape();
    
    stroke(random(255), random(255), random(255));
    n = createShape();
    n.beginShape();
    n.vertex(250, 650);
    n.vertex(250, 150);
    n.vertex(550, 650);
    n.vertex(550, 150);
    n.endShape();
    
    stroke(random(255), random(255), random(255));
    o = createShape();
    o.beginShape();
    o.vertex(325, 150);
    o.vertex(200, 317);
    o.vertex(200, 484);
    o.vertex(325, 650);
    o.vertex(475, 650);
    o.vertex(600, 484);
    o.vertex(600, 317);
    o.vertex(475, 150);
    o.endShape(CLOSE);
    
    stroke(random(255), random(255), random(255));
    p = createShape();
    p.beginShape();
    p.vertex(250, 650);
    p.vertex(250, 150);
    p.vertex(500, 150);
    p.vertex(550, 250);
    p.vertex(500, 350);
    p.vertex(250, 350);
    p.endShape();
    
    stroke(random(255), random(255), random(255));
    q = createShape();
    q.beginShape();
    q.vertex(325, 150);
    q.vertex(200, 317);
    q.vertex(200, 484);
    q.vertex(325, 650);
    q.vertex(475, 650);
    q.vertex(535, 567);
    q.vertex(600, 650);
    q.vertex(470, 500);
    q.vertex(535, 567);
    q.vertex(600, 484);
    q.vertex(600, 317);
    q.vertex(475, 150);
    q.endShape(CLOSE); 
    
    stroke(random(255), random(255), random(255));
    r = createShape();
    r.beginShape();
    r.vertex(250, 650);
    r.vertex(250, 150);
    r.vertex(500, 150);
    r.vertex(550, 250);
    r.vertex(500, 350);
    r.vertex(275, 350);
    r.vertex(550, 650);
    r.endShape();
    
    stroke(random(255), random(255), random(255));
    s = createShape();
    s.beginShape();
    s.vertex(250, 500);
    s.vertex(350, 650);
    s.vertex(450, 650);
    s.vertex(550, 500);
    s.vertex(250, 300);
    s.vertex(350, 150);
    s.vertex(450, 150);
    s.vertex(550, 300);
    s.endShape();
    
    stroke(random(255), random(255), random(255));
    t = createShape();
    t.beginShape();
    t.vertex(250, 150);
    t.vertex(550, 150);
    t.vertex(400, 150);
    t.vertex(400, 650); 
    t.endShape();
    
    stroke(random(255), random(255), random(255));
    u = createShape();
    u.beginShape();
    u.vertex(250, 150);
    u.vertex(250, 550);
    u.vertex(350, 650);
    u.vertex(450, 650);
    u.vertex(550, 550);
    u.vertex(550, 150);
    u.endShape();
    
    stroke(random(255), random(255), random(255));
    v = createShape();
    v.beginShape();
    v.vertex(250, 150);
    v.vertex(400, 650);
    v.vertex(550, 150);
    v.endShape();
    
    stroke(random(255), random(255), random(255));
    w = createShape();
    w.beginShape();
    w.vertex(250, 150);
    w.vertex(250, 650);
    w.vertex(400, 250);
    w.vertex(550, 650);
    w.vertex(550, 150);
    w.endShape();
    
    stroke(random(255), random(255), random(255));
    x = createShape();
    x.beginShape();
    x.vertex(250, 150);
    x.vertex(400, 400);
    x.vertex(250, 650);
    x.vertex(550, 150);
    x.vertex(400, 400);
    x.vertex(550, 650);
    x.endShape();
    
    stroke(random(255), random(255), random(255));
    y = createShape();
    y.beginShape();
    y.vertex(250, 150);
    y.vertex(400, 300);
    y.vertex(550, 150);
    y.vertex(400, 300);
    y.vertex(400, 650);
    y.endShape();
    
    stroke(random(255), random(255), random(255));
    z = createShape();
    z.beginShape();
    z.vertex(250, 150);
    z.vertex(550, 150);
    z.vertex(250, 650);
    z.vertex(550, 650);
    z.endShape();
    
    
    
  }
  
  void draw() {
    
    char letter = key;
    System.out.println(key);
    switch(letter) {
      
      case 'a':
      case 'A':
        shape(a);
      break;
      case 'b':
      case 'B':
        shape(b);
      break;
      case 'c':
      case 'C':
        shape(c);
      break;
      case 'd':
      case 'D':
        shape(d);
      break;
      case 'e':
      case 'E':
        shape(e);
      break;
      case 'f':
      case 'F':
        shape(f);
      break;
      case 'g':
      case 'G':
        shape(g);
      break;
      case 'h':
      case 'H':
        shape(h);
      break;
      case 'i':
      case 'I':
        shape(i);
      break;
      case 'j':
      case 'J':
        shape(j);
      break;
      case 'k':
      case 'K':
        shape(k);
      break;
      case 'l':
      case 'L':
        shape(l);
      break;
      case 'm':
      case 'M':
        shape(m);
      break;
      case 'n':
      case 'N':
        shape(n);
      break;
      case 'o':
      case 'O':
        shape(o);
      break;
      case 'p':
      case 'P':
        shape(p);
      break;
      case 'q':
      case 'Q':
        shape(q);
      break;
      case 'r':
      case 'R':
        shape(r);
      break;
      case 's':
      case 'S':
        shape(s);
      break;
      case 't':
      case 'T':
        shape(t);
      break;
      case 'u':
      case 'U':
        shape(u);
      break;
      case 'v':
      case 'V':
        shape(v);
      break;
      case 'w':
      case 'W':
        shape(w);
      break;
      case 'x':
      case 'X':
        shape(x);
      break;
      case 'y':
      case 'Y':
        shape(y);
      break;
      case 'z':
      case 'Z':
        shape(z);
      break;
      
    }

  }
  
}
