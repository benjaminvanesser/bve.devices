{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 59.0, 106.0, 894.0, 820.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 268.0, 63.0, 40.0, 22.0 ],
                    "text": "* 0.01"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.180392156862745, 0.698039215686274, 0.827450980392157, 1.0 ],
                    "activefgdialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 1.0 ],
                    "fontname": "Ableton Sans Light",
                    "id": "obj-147",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 268.0, 7.0, 41.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 48.0, 121.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "blur", "sharp" ],
                            "parameter_initial": [ 50 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "speed",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": 30.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "speed",
                            "parameter_type": 1,
                            "parameter_units": "1 2 3 4",
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 0.862745098039216, 0.862745098039216, 0.862745098039216, 1.0 ],
                    "tricolor": [ 0.180392156862745, 0.698039215686274, 0.827450980392157, 1.0 ],
                    "varname": "speed"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-146",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 268.0, 92.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 268.0, 117.0, 46.0, 22.0 ],
                    "text": "rate $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-136",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 225.0, 233.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 225.0, 260.0, 109.0, 22.0 ],
                    "text": "prepend saturation"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 1.0 ],
                    "activebgoncolor": [ 0.180392156862745, 0.698039215686274, 0.827450980392157, 1.0 ],
                    "activetextcolor": [ 0.8, 0.8, 0.8, 1.0 ],
                    "activetextoncolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "bgcolor": [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 1.0 ],
                    "bgoncolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 1.0 ],
                    "id": "obj-122",
                    "inactivelcdcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "labeltextcolor": [ 0.862745098039216, 0.862745098039216, 0.862745098039216, 1.0 ],
                    "lcdbgcolor": [ 0.019607843137255, 0.019607843137255, 0.019607843137255, 1.0 ],
                    "lcdcolor": [ 0.952941176470588, 0.580392156862745, 0.125490196078431, 1.0 ],
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 67.0, 92.0, 66.0, 16.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.0, 38.0, 126.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "activetextcolor": {
                            "expression": ""
                        },
                        "activetextoncolor": {
                            "expression": ""
                        },
                        "bgcolor": {
                            "expression": ""
                        },
                        "bgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "inactivelcdcolor": {
                            "expression": ""
                        },
                        "labeltextcolor": {
                            "expression": ""
                        },
                        "lcdbgcolor": {
                            "expression": ""
                        },
                        "lcdcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "textoffcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "state",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "state",
                            "parameter_type": 2
                        }
                    },
                    "text": "off",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoffcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "texton": "on",
                    "varname": "state"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 39.0,
                    "id": "obj-135",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 59.0, 37.0, 154.0, 53.0 ],
                    "presentation": 1,
                    "presentation_rect": [ -1.0, -8.0, 139.0, 53.0 ],
                    "text": "insense"
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "bang" ],
                    "patching_rect": [ 409.0, 795.0, 29.5, 22.0 ],
                    "text": "t i b"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 665.0, 833.0, 29.5, 22.0 ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.180392156862745, 0.698039215686274, 0.827450980392157, 1.0 ],
                    "activefgdialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 1.0 ],
                    "fontname": "Ableton Sans Light",
                    "id": "obj-128",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 571.0, 544.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 92.0, 123.0, 39.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "blur", "sharp" ],
                            "parameter_initial": [ 40.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "treshold",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "treshold",
                            "parameter_type": 1,
                            "parameter_units": "1 2 3 4",
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 0.862745098039216, 0.862745098039216, 0.862745098039216, 1.0 ],
                    "tricolor": [ 0.180392156862745, 0.698039215686274, 0.827450980392157, 1.0 ],
                    "varname": "treshold"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.180392156862745, 0.698039215686274, 0.827450980392157, 1.0 ],
                    "activefgdialcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 1.0 ],
                    "fontname": "Ableton Sans Light",
                    "id": "obj-72",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 512.0, 199.0, 41.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.0, 123.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "blur", "sharp" ],
                            "parameter_initial": [ 90.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "position",
                            "parameter_mmax": 120.0,
                            "parameter_mmin": 10.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "position",
                            "parameter_type": 1,
                            "parameter_units": "1 2 3 4",
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.862745098039216, 0.862745098039216, 0.862745098039216, 1.0 ],
                    "tricolor": [ 0.180392156862745, 0.698039215686274, 0.827450980392157, 1.0 ],
                    "varname": "position"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 1.0 ],
                    "activetricolor2": [ 0.2, 0.749019607843137, 0.858823529411765, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 1.0 ],
                    "id": "obj-73",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 551.0, 915.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 93.0, 81.0, 37.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activetricolor2": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 108.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "top",
                            "parameter_modmode": 0,
                            "parameter_shortname": "top",
                            "parameter_type": 0,
                            "parameter_unitstyle": 8
                        }
                    },
                    "textcolor": [ 0.862745098039216, 0.862745098039216, 0.862745098039216, 1.0 ],
                    "varname": "top"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 1.0 ],
                    "activetricolor2": [ 0.2, 0.749019607843137, 0.858823529411765, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 1.0 ],
                    "id": "obj-42",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 515.0, 915.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 48.0, 81.0, 37.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activetricolor2": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 24.00000000000003 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "root",
                            "parameter_modmode": 0,
                            "parameter_shortname": "root",
                            "parameter_type": 0,
                            "parameter_unitstyle": 8
                        }
                    },
                    "textcolor": [ 0.862745098039216, 0.862745098039216, 0.862745098039216, 1.0 ],
                    "varname": "root"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 409.0, 953.0, 196.05360374999987, 22.0 ],
                    "text": "scale 0 127 0 127"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 9.0,
                    "id": "obj-98",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 872.0, 1442.0, 47.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 101.0, 41.0, 17.0 ],
                    "text": "duration"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium Regular Bold",
                    "id": "obj-97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 915.0, 18.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 83.0, 79.0, 18.0, 18.0 ],
                    "text": "-"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 409.0, 1436.0, 50.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 1.0 ],
                    "activetricolor2": [ 0.2, 0.749019607843137, 0.858823529411765, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 1.0 ],
                    "id": "obj-78",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 920.0, 1443.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 48.0, 101.0, 82.5, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activetricolor2": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 2000 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "duration",
                            "parameter_mmax": 5000.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "duration",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 0.862745098039216, 0.862745098039216, 0.862745098039216, 1.0 ],
                    "varname": "duration"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 1.0 ],
                    "hltcolor": [ 0.180392156862745, 0.698039215686274, 0.827450980392157, 1.0 ],
                    "hlttextcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "id": "obj-40",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 444.0, 1182.0, 100.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 35.0, 62.0, 95.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "hltcolor": {
                            "expression": ""
                        },
                        "hlttextcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "chromatic", "ionian", "dorian", "phrygian", "lydian", "mixolydian", "aeolian", "locrian", "whole tone", "major pentatonic", "minor pentatonic", "octotonic 2-1", "octotonic 1-2", "blues" ],
                            "parameter_initial": [ 2 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "scales",
                            "parameter_mmax": 13,
                            "parameter_modmode": 0,
                            "parameter_shortname": "scales",
                            "parameter_type": 2
                        }
                    },
                    "textcolor": [ 0.862745098039216, 0.862745098039216, 0.862745098039216, 1.0 ],
                    "tricolor": [ 0.862745098039216, 0.862745098039216, 0.862745098039216, 1.0 ],
                    "varname": "scales"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 409.0, 1376.0, 50.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 409.0, 1510.0, 49.0, 22.0 ],
                    "text": "noteout"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 409.0, 1474.0, 530.0, 22.0 ],
                    "text": "makenote 70 2000 @repeatmode 2"
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 409.0, 1145.0, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 9.0,
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 453.0, 915.0, 46.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 81.0, 39.0, 17.0 ],
                    "text": "ambitus"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 9.0,
                    "id": "obj-125",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 547.0, 1181.0, 66.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 62.0, 28.0, 17.0 ],
                    "text": "scale"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 409.0, 1241.0, 45.0, 22.0 ],
                    "text": "zl rot 1"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 409.0, 1271.0, 73.0, 22.0 ],
                    "text": "prepend nth"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 409.0, 1210.0, 54.0, 22.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 409.0, 1016.0, 90.0, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 409.0, 1080.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 409.0, 1406.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 409.0, 1337.0, 90.0, 22.0 ],
                    "text": "+"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 480.0, 1080.0, 30.0, 22.0 ],
                    "text": "* 12"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 409.0, 1112.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 480.0, 1048.0, 29.5, 22.0 ],
                    "text": "/ 12"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 409.0, 1048.0, 36.0, 22.0 ],
                    "text": "% 12"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 409.0, 878.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 14,
                        "data": [
                            {
                                "key": 0,
                                "value": [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ]
                            },
                            {
                                "key": 1,
                                "value": [ 0, 0, 2, 2, 4, 5, 5, 7, 7, 9, 9, 11 ]
                            },
                            {
                                "key": 2,
                                "value": [ 0, 0, 2, 3, 3, 5, 5, 7, 7, 9, 10, 10 ]
                            },
                            {
                                "key": 3,
                                "value": [ 0, 1, 1, 3, 3, 5, 5, 7, 8, 8, 10, 10 ]
                            },
                            {
                                "key": 4,
                                "value": [ 0, 0, 2, 2, 4, 4, 6, 7, 7, 9, 9, 11 ]
                            },
                            {
                                "key": 5,
                                "value": [ 0, 0, 2, 2, 4, 5, 5, 7, 7, 9, 10, 10 ]
                            },
                            {
                                "key": 6,
                                "value": [ 0, 0, 2, 3, 3, 5, 5, 7, 8, 8, 10, 10 ]
                            },
                            {
                                "key": 7,
                                "value": [ 0, 1, 1, 3, 3, 5, 6, 6, 8, 8, 10, 10 ]
                            },
                            {
                                "key": 8,
                                "value": [ 0, 0, 2, 2, 4, 4, 6, 6, 8, 8, 10, 10 ]
                            },
                            {
                                "key": 9,
                                "value": [ 0, 0, 2, 2, 4, 4, 7, 7, 7, 9, 9, 9 ]
                            },
                            {
                                "key": 10,
                                "value": [ 0, 0, 0, 3, 3, 5, 5, 5, 7, 7, 10, 10 ]
                            },
                            {
                                "key": 11,
                                "value": [ 0, 0, 2, 3, 3, 5, 6, 6, 8, 9, 9, 11 ]
                            },
                            {
                                "key": 12,
                                "value": [ 0, 1, 1, 3, 4, 4, 6, 7, 7, 9, 10, 10 ]
                            },
                            {
                                "key": 13,
                                "value": [ 0, 0, 2, 3, 4, 4, 5, 7, 7, 9, 10, 11 ]
                            }
                        ]
                    },
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 409.0, 1305.0, 64.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll scales"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 67.0, 199.0, 128.0, 22.0 ],
                    "text": "jit.dimmap @invert 0 1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "elementcolor": [ 0.12549019607843137, 0.12549019607843137, 0.12549019607843137, 0.0 ],
                    "id": "obj-88",
                    "knobcolor": [ 0.011764705882353, 0.764705882352941, 0.835294117647059, 1.0 ],
                    "knobshape": 5,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 512.0, 269.0, 288.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 132.0, 2.0, 281.0, 170.0 ],
                    "thickness": 10.0
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 409.0, 833.0, 39.0, 22.0 ],
                    "text": "!- 127"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 665.0, 871.0, 40.0, 22.0 ],
                    "text": "* 127."
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "float" ],
                    "patching_rect": [ 409.0, 688.0, 285.0, 22.0 ],
                    "text": "unpack 0 0."
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 409.0, 763.0, 60.0, 22.0 ],
                    "text": "zl median"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 409.0, 729.0, 59.0, 22.0 ],
                    "text": "thresh 20"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-67",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 108.0, 233.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 108.0, 260.0, 111.0, 22.0 ],
                    "text": "prepend brightness"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 422.0, 491.0, 39.0, 22.0 ],
                    "text": "$3 $5"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 422.0, 447.0, 88.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 409.0, 653.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 409.0, 614.0, 202.0, 22.0 ],
                    "text": ">= 0.7"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 491.0, 491.0, 29.5, 22.0 ],
                    "text": "$5"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 67.0, 290.0, 222.0, 22.0 ],
                    "text": "jit.brcosa @brightness 2. @saturation 0."
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 394.0, 280.0, 47.0, 22.0 ],
                    "text": "uzi 127"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 348.0, 339.0, 93.0, 22.0 ],
                    "text": "pak getcell 64 0"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 20.0, 510.0, 199.0, 149.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 136.0, 5.0, 273.0, 164.0 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 78.0, 402.0, 363.25, 22.0 ],
                    "text": "jit.matrix insense 1 float32 127 127"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 67.0, 122.0, 63.0, 22.0 ],
                    "text": "qmetro 60"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "" ],
                    "patching_rect": [ 67.0, 339.0, 61.0, 22.0 ],
                    "text": "jit.unpack"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 67.0, 167.0, 201.0, 23.0 ],
                    "text": "jit.movie @moviefile insense.mov"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "midpoints": [ 76.5, 160.20274353027344, 403.5, 160.20274353027344 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-102", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.701961, 1.0 ],
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 1 ],
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 1 ],
                    "midpoints": [ 929.5, 1501.5, 433.5, 1501.5 ],
                    "source": [ "obj-113", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "order": 0,
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 76.5, 270.7262878417969, 29.5, 270.7262878417969 ],
                    "order": 1,
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 1 ],
                    "source": [ "obj-128", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 357.5, 381.0, 87.5, 381.0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "midpoints": [ 429.0, 825.0, 674.5, 825.0 ],
                    "source": [ "obj-134", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "midpoints": [ 234.5, 286.0, 76.5, 286.0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 2 ],
                    "source": [ "obj-14", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 277.5, 153.0, 76.5, 153.0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 1 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 3 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "midpoints": [ 500.5, 565.8919067382812, 418.5, 565.8919067382812 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-55", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 1 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "midpoints": [ 117.5, 286.0, 76.5, 286.0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 4 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 2 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 1 ],
                    "source": [ "obj-80", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 1 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 521.5, 317.0, 394.5, 317.0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-122": [ "state", "state", 0 ],
            "obj-128": [ "treshold", "treshold", 0 ],
            "obj-147": [ "speed", "speed", 0 ],
            "obj-40": [ "scales", "scales", 0 ],
            "obj-42": [ "root", "root", 0 ],
            "obj-72": [ "position", "position", 0 ],
            "obj-73": [ "top", "top", 0 ],
            "obj-78": [ "duration", "duration", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}