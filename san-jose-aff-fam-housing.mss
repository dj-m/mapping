@oceanwater:#b8dee6;
@white:#fff;
@housing:#4db8ff;
@streetcase:#c0bf85;
@streetline:#fbf898;
@highwaycase:#f6eae0;
@landfill:#f9f2ec;
@landline:#f2e6d9;
@hydrofill:#b8dee6;
@hydroline:#5259e0;
@naturalwaterfill:#b8dee6;
@naturalparkfill:#ae8;
@naturalparkline:#594;
@naturalriverbankline:#ddd;
@landusefill:#f2f2f2;
@landuseline:#e6e6e6;
@waterwaysline:#e6f9ff;
@font:"Arial Regular";
@placetext:#808080;


Map {
  background-color: @oceanwater;
}

#parcel {
  line-color:#ffca9b;
  line-width:0.5;
  polygon-fill:#f9f2d4;
  polygon-opacity:0.8;
}

#housing[zoom>=10] {
  marker-file:url(maki/building-15.svg);
  marker-fill:@housing;
}

#housing[zoom<=9] {
  marker-file:url(maki/building-11.svg);
  marker-fill:@housing;
}

#housing {
  marker-allow-overlap:true;
  marker-ignore-placement:true;
}


#dividedstreets {
  [STREETCLAS = 'MA'] {
    ::case {
      line-width:3.5;
      line-color:@streetcase;
    }
    ::fill {
      line-width:2.5;
      line-color:@streetline;
      }
    text-name:[FULLNAME] ;
    text-face-name:@font;
    text-fill:@placetext;
    text-halo-radius:1 ;
    text-halo-fill:#fff ;
    text-size:12;
    text-placement:line;
    }
  [STREETCLAS = 'RE'] {
    ::case {
      line-width:1.25;
      line-color:@streetcase;
      line-opacity:0.1;
    }
    ::fill {
      line-width:1;
      line-color:@streetline;
      line-opacity:0.05;
      }
    }
  [STREETCLAS = 'MI'] {
    ::case {
      line-width:0.75;
      line-color:@streetcase;
      line-opacity:0.1;
    }
    ::fill {
      line-width:0.5;
      line-color:@streetline;
      line-opacity:0.05;
      }
    }
}


#highway {
  [RouteType = 'Interstate'] {
    ::case {
      line-width:2;
      line-color:@highwaycase;
    }
    ::fill {
      line-width:1;
      line-color:@white;
    }
  }
  [RouteType = 'US'] {
    ::case {
      line-width:1.25;
      line-color:@highwaycase;
    }
    ::fill {
      line-width:1;
      line-color:@white;
    }
  }
  [RouteType = 'State'] {
    ::case {
      line-width:0.75;
      line-color:@highwaycase;
    }
    ::fill {
      line-width:0.5;
      line-color:@white;
    }
  }
}


#landpolygons {
  polygon-opacity:1;
  polygon-gamma:0.5;
  polygon-fill:@landfill;
  line-color:@landline;
  line-width:0.5;
}


#ushydro {
  polygon-opacity:1;
  polygon-fill:@hydrofill;
  line-color:@hydroline;
  line-width:0.5;
}


#canatural {
  [type = 'water'] {
    polygon-opacity:0.5;
    polygon-fill:@naturalwaterfill;
    }
  [type = 'park'] {
    polygon-opacity:0.5;
    polygon-fill:@naturalparkfill;
    line-color:@naturalparkline;
    line-width:0.5;
	}
  [type = 'riverbank'] {
    line-color:@naturalriverbankline;
    line-width:0.5;
    line-opacity:0.5
    }
}


#calanduse {
  polygon-opacity:0.5;
  polygon-fill:@landusefill;
  line-color:@landuseline;
  line-width:0.5;
}


#cawaterways {
  line-opacity:1;
  line-width:0.5;
  line-color:@waterwaysline;
}


#caplaces {
    [type = 'island'] {
    text-name:[name] ;
    text-fill:@placetext;
    text-face-name:@font ;
    text-halo-radius:1 ;
    text-halo-fill:@white ;
    }
}


#caplaces[zoom<=11] {
  [type = 'city'] {
    text-name:[name] ;
    text-fill:@placetext;
    text-face-name:@font ;
    text-halo-radius:1 ;
    text-halo-fill:@white ;
    }
}

#caplaces[zoom=12] {
  [type = 'suburb'] {
    text-name:[name] ;
    text-fill:@placetext;
    text-face-name:@font ;
    text-halo-radius:1 ;
    text-halo-fill:@white ;
    }
}

#caplaces[zoom>=13] {
  [type = 'town'],
  [type = 'village'],
  [type = 'hamlet'],
  [type = 'locality'] {
    text-name:[name] ;
    text-fill:@placetext;
    text-face-name:@font ;
    text-halo-radius:1 ;
    text-halo-fill:@white ;
    }
}
