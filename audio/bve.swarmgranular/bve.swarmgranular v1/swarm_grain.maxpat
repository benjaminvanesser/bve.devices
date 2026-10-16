{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 8,
   "minor": 5,
   "revision": 0,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   60,
   80,
   1100,
   760
  ],
  "bglocked": 0,
  "openinpresentation": 1,
  "default_fontsize": 10.0,
  "default_fontface": 0,
  "default_fontname": "Arial",
  "gridonopen": 1,
  "gridsize": [
   15.0,
   15.0
  ],
  "boxes": [
   {
    "box": {
     "maxclass": "newobj",
     "text": "in 1",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-1",
     "patching_rect": [
      30,
      20,
      40,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "unpack 0. 0. 0. 0. 0. 19000.",
     "numinlets": 1,
     "numoutlets": 6,
     "outlettype": [
      "float",
      "float",
      "float",
      "float",
      "float",
      "float"
     ],
     "id": "obj-2",
     "patching_rect": [
      30,
      60,
      240,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "sig~ 0.",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "id": "obj-3",
     "patching_rect": [
      250,
      110,
      50,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "sig~ 0.",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "id": "obj-4",
     "patching_rect": [
      320,
      110,
      50,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pak 0. 0. 0.",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-5",
     "patching_rect": [
      30,
      110,
      100,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "$1, $2 $3",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-6",
     "patching_rect": [
      30,
      150,
      80,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0, 1 $3",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-7",
     "patching_rect": [
      140,
      150,
      80,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "line~",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "id": "obj-8",
     "patching_rect": [
      30,
      190,
      50,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "play~ swarmbuf",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "id": "obj-9",
     "patching_rect": [
      30,
      230,
      100,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "svf~ 19000. 0.",
     "numinlets": 3,
     "numoutlets": 4,
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "id": "obj-10",
     "patching_rect": [
      30,
      260,
      80,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "svf~ 19000. 0.",
     "numinlets": 3,
     "numoutlets": 4,
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "id": "obj-11",
     "patching_rect": [
      30,
      290,
      80,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "line~",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "id": "obj-12",
     "patching_rect": [
      140,
      190,
      50,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "cos~",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "id": "obj-13",
     "patching_rect": [
      140,
      230,
      40,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ -0.5",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "id": "obj-14",
     "patching_rect": [
      140,
      270,
      60,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "+~ 0.5",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "id": "obj-15",
     "patching_rect": [
      140,
      310,
      60,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "id": "obj-16",
     "patching_rect": [
      30,
      350,
      40,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "id": "obj-17",
     "patching_rect": [
      30,
      400,
      40,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "id": "obj-18",
     "patching_rect": [
      250,
      400,
      40,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "out~ 1",
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-19",
     "patching_rect": [
      30,
      450,
      50,
      20
     ]
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "out~ 2",
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-20",
     "patching_rect": [
      250,
      450,
      50,
      20
     ]
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-1",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      1
     ],
     "destination": [
      "obj-5",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      2
     ],
     "destination": [
      "obj-5",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      3
     ],
     "destination": [
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      4
     ],
     "destination": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
      0
     ],
     "destination": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
      0
     ],
     "destination": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      0
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      5
     ],
     "destination": [
      "obj-10",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      5
     ],
     "destination": [
      "obj-11",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      0
     ],
     "destination": [
      "obj-16",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-17",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      0
     ],
     "destination": [
      "obj-18",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
      0
     ],
     "destination": [
      "obj-20",
      0
     ]
    }
   }
  ]
 }
}