@font_reg: "Ubuntu Regular","Arial Regular","DejaVu Sans Book";
/* Official UCB colors */
@ucb-gold: #CFB87C; 
@ucb-black:#000000;
@ucb-dark-grey:#565A5C;
@ucb-light-grey:#A2A4A3;

/* Building Colors */
@building-university: @ucb-gold;//#d8a227;
@building-apartments: #f3de55;
@building-dormitory: @building-apartments;
@building-office: #838383;
//@fill: @ucb-light-grey; // Default

// Default
.building{  
  building-fill-opacity:0.8; 
  polygon-fill: @ucb-light-grey;
  
  /* Colors */
  [building='university']{
    polygon-fill: @building-university;
  }
  [building='apartments']{
    polygon-fill: @building-apartments;
  }
  [building='dormitory']{
    polygon-fill: @building-dormitory;
  }
  [building='office']{
    polygon-fill: @building-office;
  }
  
  /* Labels */
  .building::labels{
    [zoom>16][zoom<18]{
      text-face-name:@font_reg;
      text-fill:#555;
      text-halo-fill:#fff;
      text-halo-radius:2;
      text-name:"[short_name]";
    }
    [zoom>=18]{
      text-face-name:@font_reg;
      text-fill:#555;
      text-halo-fill:#fff;
      text-halo-radius:2;
      text-name:"[name]";
    }  
  } 
}
// Make non-university buildings a bit lighter
@lightness-factor: 25;
.building['operator'!='University of Colorado Boulder']{
  
  polygon-fill: lighten(@ucb-light-grey, @lightness-factor);
  
  /* Colors */
  [building='university']{
    polygon-fill: lighten(@building-university, @lightness-factor);
  }
  [building='apartments']{
    polygon-fill: lighten(@building-apartments, @lightness-factor);
  }
  [building='dormitory']{
    polygon-fill: lighten(@building-dormitory, @lightness-factor);
  }
  [building='office']{
    polygon-fill: lighten(@building-office, @lightness-factor);
  }

}