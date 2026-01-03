{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 487.0, 178.0, 1000.0, 748.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 418.0, 250.0, 54.0, 22.0 ],
                    "text": "delay 80"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 470.0, 250.0, 54.0, 22.0 ],
                    "text": "delay 80"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 146.0, 266.0, 55.0, 22.0 ],
                    "text": "hidden 0"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 281.0, 55.0, 22.0 ],
                    "text": "hidden 0"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 418.0, 281.0, 55.0, 22.0 ],
                    "text": "hidden 1"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "hidden": 1,
                    "id": "obj-35",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 418.0, 330.0, 154.0, 153.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 191.0, 3.0, 165.0, 165.0 ],
                    "proportion": 0.39,
                    "rounded": 0
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 55.0, 292.0, 55.0, 22.0 ],
                    "text": "hidden 1"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 146.0, 166.5, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 146.0, 139.5, 58.0, 22.0 ],
                    "text": "r ---mode"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "int", "int" ],
                    "patching_rect": [ 55.0, 139.5, 83.0, 22.0 ],
                    "text": "live.thisdevice"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 86.0, 208.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 784.0, 425.0, 39.0, 22.0 ],
                    "text": "$1 80"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 784.0, 455.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 732.0, 425.0, 39.0, 22.0 ],
                    "text": "$1 80"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 732.0, 455.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 680.0, 425.0, 39.0, 22.0 ],
                    "text": "$1 80"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 680.0, 455.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 10.0,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 799.0, 493.0, 62.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 534.0, 109.0, 25.0, 18.0 ],
                    "text": "sick"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 10.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 736.0, 493.0, 62.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 503.0, 78.0, 56.0, 18.0 ],
                    "text": "contagious"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 10.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 680.0, 493.0, 62.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 519.0, 48.0, 40.0, 18.0 ],
                    "text": "healthy"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bordercolor": [ 0.06666666666666667, 0.06666666666666667, 0.06666666666666667, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-127",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 784.0, 516.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 559.0, 110.0, 35.0, 15.0 ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 127 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 2,
                            "parameter_longname": "scale top[2]",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "scale top",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "varname": "scalehigh[2]"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bordercolor": [ 0.06666666666666667, 0.06666666666666667, 0.06666666666666667, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-126",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 732.0, 516.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 559.0, 79.0, 35.0, 15.0 ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 127 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 2,
                            "parameter_longname": "scale top[1]",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "scale top",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "varname": "scalehigh[1]"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bordercolor": [ 0.06666666666666667, 0.06666666666666667, 0.06666666666666667, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-173",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 680.0, 516.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 559.0, 49.0, 35.0, 15.0 ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 127 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 2,
                            "parameter_longname": "scale top",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "scale top",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "varname": "scalehigh"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-13",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 809.0, 580.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 809.0, 610.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1097.0, 620.0, 80.0, 22.0 ],
                    "text": "loadmess 0.5"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-16",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Abl.MapUi.maxpat",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 842.0, 627.0, 225.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 594.0, 106.0, 229.0, 21.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "color": [ 0.0, 1.0, 0.694117647058824, 1.0 ],
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 809.0, 685.0, 327.25, 22.0 ],
                    "text": "poly~ Abl.Map"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-6",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 757.0, 685.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 757.0, 715.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1045.0, 725.0, 80.0, 22.0 ],
                    "text": "loadmess 0.5"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-10",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Abl.MapUi.maxpat",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 790.0, 732.0, 225.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 594.0, 75.0, 229.0, 21.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "color": [ 0.0, 1.0, 0.694117647058824, 1.0 ],
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 757.0, 790.0, 327.25, 22.0 ],
                    "text": "poly~ Abl.Map"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-31",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 705.0, 790.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 705.0, 820.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 993.0, 830.0, 80.0, 22.0 ],
                    "text": "loadmess 0.5"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-11",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Abl.MapUi.maxpat",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 738.0, 837.0, 225.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 594.0, 46.0, 229.0, 21.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "color": [ 0.0, 1.0, 0.694117647058824, 1.0 ],
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 705.0, 895.0, 327.25, 22.0 ],
                    "text": "poly~ Abl.Map"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 335.0, 256.0, 59.0, 22.0 ],
                    "text": "s ---notes"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 876.0, 501.0, 48.0, 22.0 ],
                    "text": "del 100"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 876.0, 439.0, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.011764705882352941, 0.7647058823529411, 0.8352941176470589, 1.0 ],
                    "activefgdialcolor": [ 0.8509803921568627, 0.8509803921568627, 0.8509803921568627, 1.0 ],
                    "activeneedlecolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "bordercolor": [ 0.06666666666666667, 0.06666666666666667, 0.06666666666666667, 1.0 ],
                    "dialcolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "fgdialcolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-89",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 805.0, 64.0, 70.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 100.0, 7.0, 45.0, 48.0 ],
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
                        "dialcolor": {
                            "expression": ""
                        },
                        "fgdialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "needlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 100 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "balls",
                            "parameter_mmax": 300.0,
                            "parameter_mmin": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "balls",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "tricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "balls"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 824.0, 129.0, 55.0, 22.0 ],
                    "text": "s ---balls"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 478.0, 155.0, 37.0, 22.0 ],
                    "text": "infect"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 478.0, 114.0, 66.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "activebgoncolor": [ 0.00784313725490196, 0.6470588235294118, 0.7058823529411765, 1.0 ],
                    "activetextcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "activetextoncolor": [ 0.027450980392156862, 0.027450980392156862, 0.027450980392156862, 1.0 ],
                    "annotation": "",
                    "bgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bgoncolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "id": "obj-74",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 478.0, 64.0, 70.0, 14.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 122.0, 92.0, 19.0 ],
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
                        "textcolor": {
                            "expression": ""
                        },
                        "textoffcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "auto-reinfect",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "auto-reinfect",
                            "parameter_type": 2
                        }
                    },
                    "text": "auto-reinfect",
                    "textcolor": [ 0.1411764705882353, 0.1411764705882353, 0.1411764705882353, 1.0 ],
                    "textoffcolor": [ 0.4117647058823529, 0.4117647058823529, 0.4117647058823529, 1.0 ],
                    "texton": "auto-reinfect",
                    "varname": "auto-reinfect"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 525.0, 87.0, 67.0, 22.0 ],
                    "text": "r ---reinfect"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 876.0, 529.0, 69.0, 22.0 ],
                    "text": "s ---reinfect"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 876.0, 471.0, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 876.0, 414.0, 29.5, 22.0 ],
                    "text": "< 1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.011764705882352941, 0.7647058823529411, 0.8352941176470589, 1.0 ],
                    "activefgdialcolor": [ 0.8509803921568627, 0.8509803921568627, 0.8509803921568627, 1.0 ],
                    "activeneedlecolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "bordercolor": [ 0.06666666666666667, 0.06666666666666667, 0.06666666666666667, 1.0 ],
                    "dialcolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "fgdialcolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-61",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1018.0, 64.0, 70.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 107.0, 117.0, 70.0, 48.0 ],
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
                        "dialcolor": {
                            "expression": ""
                        },
                        "fgdialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "needlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 3000 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "diseased time",
                            "parameter_mmax": 15000.0,
                            "parameter_mmin": 1000.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "diseased time",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "tricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "diseased_time"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.011764705882352941, 0.7647058823529411, 0.8352941176470589, 1.0 ],
                    "activefgdialcolor": [ 0.8509803921568627, 0.8509803921568627, 0.8509803921568627, 1.0 ],
                    "activeneedlecolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "bordercolor": [ 0.06666666666666667, 0.06666666666666667, 0.06666666666666667, 1.0 ],
                    "dialcolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "fgdialcolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-57",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 908.0, 64.0, 70.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 107.0, 62.0, 70.0, 48.0 ],
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
                        "dialcolor": {
                            "expression": ""
                        },
                        "fgdialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "needlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 3000 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "incubation time",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 1000.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "incubation time",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "tricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "incubation_time"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.011764705882352941, 0.7647058823529411, 0.8352941176470589, 1.0 ],
                    "activefgdialcolor": [ 0.8509803921568627, 0.8509803921568627, 0.8509803921568627, 1.0 ],
                    "activeneedlecolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "bordercolor": [ 0.06666666666666667, 0.06666666666666667, 0.06666666666666667, 1.0 ],
                    "dialcolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "fgdialcolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-53",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 715.0, 64.0, 41.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 147.0, 7.0, 41.0, 48.0 ],
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
                        "dialcolor": {
                            "expression": ""
                        },
                        "fgdialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "needlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "speed",
                            "parameter_mmax": 10.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "speed",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "tricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "speed"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "activebgoncolor": [ 0.00784313725490196, 0.6470588235294118, 0.7058823529411765, 1.0 ],
                    "activetextcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "activetextoncolor": [ 0.027450980392156862, 0.027450980392156862, 0.027450980392156862, 1.0 ],
                    "automation": "",
                    "automationon": "",
                    "bgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bgoncolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "bordercolor": [ 0.00784313725490196, 0.6470588235294118, 0.7058823529411765, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "id": "obj-50",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 427.0, 155.0, 37.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 77.0, 94.0, 19.0 ],
                    "prototypename": "numbers.default",
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
                        "textcolor": {
                            "expression": ""
                        },
                        "textoffcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "", "" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "infect",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "infect",
                            "parameter_speedlim": 0.0,
                            "parameter_type": 2
                        }
                    },
                    "text": "infect",
                    "textcolor": [ 0.1411764705882353, 0.1411764705882353, 0.1411764705882353, 1.0 ],
                    "textoffcolor": [ 0.4117647058823529, 0.4117647058823529, 0.4117647058823529, 1.0 ],
                    "texton": "stop",
                    "varname": "infect"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "activebgoncolor": [ 0.00784313725490196, 0.6470588235294118, 0.7058823529411765, 1.0 ],
                    "activetextcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "activetextoncolor": [ 0.027450980392156862, 0.027450980392156862, 0.027450980392156862, 1.0 ],
                    "automation": "Arm",
                    "automationon": "Trigger",
                    "bgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bgoncolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "id": "obj-49",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 243.0, 142.0, 37.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 99.0, 94.0, 19.0 ],
                    "prototypename": "numbers.default",
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
                        "textcolor": {
                            "expression": ""
                        },
                        "textoffcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "Arm", "Trigger" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "reset",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "reset",
                            "parameter_speedlim": 0.0,
                            "parameter_type": 2
                        }
                    },
                    "text": "reset",
                    "textcolor": [ 0.1411764705882353, 0.1411764705882353, 0.1411764705882353, 1.0 ],
                    "textoffcolor": [ 0.4117647058823529, 0.4117647058823529, 0.4117647058823529, 1.0 ],
                    "texton": "stop",
                    "varname": "reset"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "activebgoncolor": [ 0.00784313725490196, 0.6470588235294118, 0.7058823529411765, 1.0 ],
                    "activetextcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "activetextoncolor": [ 0.027450980392156862, 0.027450980392156862, 0.027450980392156862, 1.0 ],
                    "automation": "Arm",
                    "automationon": "Trigger",
                    "bgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bgoncolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "id": "obj-48",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 378.0, 155.0, 37.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 55.0, 94.0, 19.0 ],
                    "prototypename": "numbers.default",
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
                        "textcolor": {
                            "expression": ""
                        },
                        "textoffcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "Arm", "Trigger" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "pause",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "pause",
                            "parameter_speedlim": 0.0,
                            "parameter_type": 2
                        }
                    },
                    "text": "stop",
                    "textcolor": [ 0.1411764705882353, 0.1411764705882353, 0.1411764705882353, 1.0 ],
                    "textoffcolor": [ 0.4117647058823529, 0.4117647058823529, 0.4117647058823529, 1.0 ],
                    "texton": "stop",
                    "varname": "pause"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "activebgoncolor": [ 0.00784313725490196, 0.6470588235294118, 0.7058823529411765, 1.0 ],
                    "activetextcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "activetextoncolor": [ 0.027450980392156862, 0.027450980392156862, 0.027450980392156862, 1.0 ],
                    "annotation": "",
                    "bgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bgoncolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "id": "obj-113",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 626.0, 90.0, 70.0, 14.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 145.5, 92.0, 19.0 ],
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
                            "parameter_longname": "collide",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "collide",
                            "parameter_type": 2
                        }
                    },
                    "text": "collide",
                    "textcolor": [ 0.1411764705882353, 0.1411764705882353, 0.1411764705882353, 1.0 ],
                    "textoffcolor": [ 0.4117647058823529, 0.4117647058823529, 0.4117647058823529, 1.0 ],
                    "texton": "collide",
                    "varname": "collide"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "activebgoncolor": [ 0.00784313725490196, 0.6470588235294118, 0.7058823529411765, 1.0 ],
                    "activetextcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "activetextoncolor": [ 0.027450980392156862, 0.027450980392156862, 0.027450980392156862, 1.0 ],
                    "automation": "Arm",
                    "automationon": "Trigger",
                    "bgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bgoncolor": [ 0.4588235294117647, 0.4588235294117647, 0.4588235294117647, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "id": "obj-46",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 335.0, 155.0, 37.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 34.0, 94.0, 19.0 ],
                    "prototypename": "numbers.default",
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
                        "textcolor": {
                            "expression": ""
                        },
                        "textoffcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "Arm", "Trigger" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "start",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "start",
                            "parameter_speedlim": 0.0,
                            "parameter_type": 2
                        }
                    },
                    "text": "start",
                    "textcolor": [ 0.1411764705882353, 0.1411764705882353, 0.1411764705882353, 1.0 ],
                    "textoffcolor": [ 0.4117647058823529, 0.4117647058823529, 0.4117647058823529, 1.0 ],
                    "texton": "stop",
                    "varname": "start"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 381.0, 25.0, 20.0 ],
                    "text": "%"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-60",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 784.0, 380.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-59",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 732.0, 380.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-58",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 680.0, 380.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 43.0, 137.0, 20.0 ],
                    "text": "viral edition"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 13.0, 62.0, 142.0, 20.0 ],
                    "text": "inspired by Sinouhé Gilot"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 680.0, 325.0, 175.0, 22.0 ],
                    "text": "route white blue red"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 298.0, 281.0, 61.0, 22.0 ],
                    "text": "zl group 2"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 626.0, 127.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 626.0, 155.0, 68.0, 22.0 ],
                    "text": "collision $1"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 715.0, 155.0, 81.0, 22.0 ],
                    "text": "set_speed $1"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 805.0, 155.0, 73.0, 22.0 ],
                    "text": "set_balls $1"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "lcd",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "list", "list", "int", "" ],
                    "patching_rect": [ 261.0, 330.0, 154.0, 153.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 191.0, 3.0, 165.0, 165.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1017.0, 155.0, 89.0, 22.0 ],
                    "text": "set_disease $1"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 908.0, 155.0, 103.0, 22.0 ],
                    "text": "set_incubation $1"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 261.0, 228.0, 93.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "infectiousviral",
                        "parameter_enable": 0
                    },
                    "text": "js infectiousviral"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 7 ],
                    "source": [ "obj-10", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 6 ],
                    "source": [ "obj-10", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 5 ],
                    "source": [ "obj-10", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 4 ],
                    "source": [ "obj-10", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 3 ],
                    "source": [ "obj-10", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 2 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 7 ],
                    "source": [ "obj-11", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 6 ],
                    "source": [ "obj-11", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 5 ],
                    "source": [ "obj-11", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 4 ],
                    "source": [ "obj-11", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 3 ],
                    "source": [ "obj-11", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 2 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 1 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 2 ],
                    "source": [ "obj-12", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-126", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-127", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 8 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 7 ],
                    "source": [ "obj-16", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 6 ],
                    "source": [ "obj-16", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 5 ],
                    "source": [ "obj-16", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 4 ],
                    "source": [ "obj-16", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 3 ],
                    "source": [ "obj-16", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 2 ],
                    "source": [ "obj-16", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 1 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 2 ],
                    "source": [ "obj-17", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-173", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 64.5, 212.13961791992188, 155.5, 212.13961791992188 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "order": 2,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 1026.5, 211.5, 270.5, 211.5 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 917.5, 211.5, 270.5, 211.5 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "midpoints": [ 155.5, 315.5, 427.5, 315.5 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 814.5, 211.5, 270.5, 211.5 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 724.5, 211.5, 270.5, 211.5 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 2 ],
                    "source": [ "obj-36", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 1 ],
                    "source": [ "obj-36", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-38", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-38", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 635.5, 211.5, 270.5, 211.5 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "midpoints": [ 307.5, 316.126953125, 689.5, 316.126953125 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-45", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-45", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "order": 0,
                    "source": [ "obj-46", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "order": 1,
                    "source": [ "obj-46", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 362.5, 211.0, 270.5, 211.0 ],
                    "order": 2,
                    "source": [ "obj-46", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 405.5, 211.0, 270.5, 211.0 ],
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "order": 2,
                    "source": [ "obj-49", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 1,
                    "source": [ "obj-49", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 270.5, 172.466064453125, 270.5, 172.466064453125 ],
                    "order": 0,
                    "source": [ "obj-49", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "order": 3,
                    "source": [ "obj-49", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 454.5, 211.0, 270.5, 211.0 ],
                    "source": [ "obj-50", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 1,
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "midpoints": [ 793.5, 407.0, 885.5, 407.0 ],
                    "order": 0,
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 1 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 487.5, 212.05502319335938, 270.5, 212.05502319335938 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 8 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 1,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 814.5, 120.5, 833.5, 120.5 ],
                    "order": 0,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 8 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10::obj-103": [ "border[2]", "border", 0 ],
            "obj-10::obj-2": [ "mode[1]", "Modulation", 0 ],
            "obj-10::obj-25": [ "Map[1]", "Map", 0 ],
            "obj-10::obj-26": [ "border[1]", "border", 0 ],
            "obj-10::obj-30": [ "Unmap[1]", "Unmap", 0 ],
            "obj-10::obj-32": [ "TargetMax[8]", "Max", 0 ],
            "obj-10::obj-33": [ "TargetMin[1]", "Min", 0 ],
            "obj-10::obj-6": [ "Modulation Polarity 1[1]", "Polarity", 0 ],
            "obj-10::obj-9": [ "Modulation Amount 1[1]", "ModAmount", 0 ],
            "obj-113": [ "collide", "collide", 0 ],
            "obj-11::obj-103": [ "border[17]", "border", 0 ],
            "obj-11::obj-2": [ "mode[11]", "Modulation", 0 ],
            "obj-11::obj-25": [ "Map[16]", "Map", 0 ],
            "obj-11::obj-26": [ "border[10]", "border", 0 ],
            "obj-11::obj-30": [ "Unmap[17]", "Unmap", 0 ],
            "obj-11::obj-32": [ "TargetMax[7]", "Max", 0 ],
            "obj-11::obj-33": [ "TargetMin[7]", "Min", 0 ],
            "obj-11::obj-6": [ "Modulation Polarity 1", "Polarity", 0 ],
            "obj-11::obj-9": [ "Modulation Amount 1", "ModAmount", 0 ],
            "obj-126": [ "scale top[1]", "scale top", 0 ],
            "obj-127": [ "scale top[2]", "scale top", 0 ],
            "obj-16::obj-103": [ "border[3]", "border", 0 ],
            "obj-16::obj-2": [ "mode[2]", "Modulation", 0 ],
            "obj-16::obj-25": [ "Map[2]", "Map", 0 ],
            "obj-16::obj-26": [ "border[11]", "border", 0 ],
            "obj-16::obj-30": [ "Unmap[2]", "Unmap", 0 ],
            "obj-16::obj-32": [ "TargetMax[1]", "Max", 0 ],
            "obj-16::obj-33": [ "TargetMin[2]", "Min", 0 ],
            "obj-16::obj-6": [ "Modulation Polarity 1[2]", "Polarity", 0 ],
            "obj-16::obj-9": [ "Modulation Amount 1[2]", "ModAmount", 0 ],
            "obj-173": [ "scale top", "scale top", 0 ],
            "obj-46": [ "start", "start", 0 ],
            "obj-48": [ "pause", "pause", 0 ],
            "obj-49": [ "reset", "reset", 0 ],
            "obj-50": [ "infect", "infect", 0 ],
            "obj-53": [ "speed", "speed", 0 ],
            "obj-57": [ "incubation time", "incubation time", 0 ],
            "obj-61": [ "diseased time", "diseased time", 0 ],
            "obj-74": [ "auto-reinfect", "auto-reinfect", 0 ],
            "obj-89": [ "balls", "balls", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-10::obj-103": {
                    "parameter_longname": "border[2]"
                },
                "obj-10::obj-2": {
                    "parameter_longname": "mode[1]"
                },
                "obj-10::obj-25": {
                    "parameter_longname": "Map[1]"
                },
                "obj-10::obj-26": {
                    "parameter_longname": "border[1]"
                },
                "obj-10::obj-30": {
                    "parameter_longname": "Unmap[1]"
                },
                "obj-10::obj-32": {
                    "parameter_longname": "TargetMax[8]"
                },
                "obj-10::obj-33": {
                    "parameter_longname": "TargetMin[1]"
                },
                "obj-10::obj-6": {
                    "parameter_longname": "Modulation Polarity 1[1]"
                },
                "obj-10::obj-9": {
                    "parameter_longname": "Modulation Amount 1[1]"
                },
                "obj-16::obj-103": {
                    "parameter_longname": "border[3]"
                },
                "obj-16::obj-2": {
                    "parameter_longname": "mode[2]"
                },
                "obj-16::obj-25": {
                    "parameter_longname": "Map[2]"
                },
                "obj-16::obj-26": {
                    "parameter_longname": "border[11]"
                },
                "obj-16::obj-30": {
                    "parameter_longname": "Unmap[2]"
                },
                "obj-16::obj-32": {
                    "parameter_longname": "TargetMax[1]"
                },
                "obj-16::obj-33": {
                    "parameter_longname": "TargetMin[2]"
                },
                "obj-16::obj-6": {
                    "parameter_longname": "Modulation Polarity 1[2]"
                },
                "obj-16::obj-9": {
                    "parameter_longname": "Modulation Amount 1[2]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}