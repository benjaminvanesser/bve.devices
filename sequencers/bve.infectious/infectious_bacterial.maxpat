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
        "rect": [ 450.0, 178.0, 607.0, 748.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 485.0, 476.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "bang", "" ],
                    "patching_rect": [ 393.0, 516.0, 54.0, 22.0 ],
                    "text": "sel 0 1 2"
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
                    "id": "obj-60",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1035.0, 187.0, 70.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 147.0, 62.0, 41.0, 48.0 ],
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
                            "parameter_initial": [ 500 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "mitosis",
                            "parameter_mmax": 2000.0,
                            "parameter_mmin": 200.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mitosis",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "tricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "mitosis"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-57",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1035.0, 252.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1035.0, 279.0, 79.0, 35.0 ],
                    "text": "mitosis_time $1"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 748.0, 210.0, 42.0, 22.0 ],
                    "text": "t 1000"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "int", "int" ],
                    "patching_rect": [ 748.0, 174.0, 83.0, 22.0 ],
                    "text": "live.thisdevice"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 393.0, 459.0, 66.0, 22.0 ],
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
                    "patching_rect": [ 393.0, 436.0, 70.0, 14.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 98.0, 92.0, 19.0 ],
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
                            "parameter_longname": "auto-reinfect[1]",
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
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 16.0, 275.0, 34.0, 22.0 ],
                    "text": "sel 0"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 16.0, 248.0, 58.0, 22.0 ],
                    "text": "r ---mode"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 10.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 928.0, 487.0, 62.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 526.0, 108.0, 34.0, 18.0 ],
                    "text": "cured"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 10.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 808.0, 487.0, 62.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 506.0, 78.0, 53.0, 18.0 ],
                    "text": "antibiotics"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Light",
                    "fontsize": 10.0,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 752.0, 487.0, 62.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 513.0, 48.0, 46.0, 18.0 ],
                    "text": "infection"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-138",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 751.0, 757.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 751.0, 787.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1024.0, 796.0, 80.0, 22.0 ],
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
                    "id": "obj-141",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Abl.MapUi.maxpat",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 784.0, 804.0, 225.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 594.0, 106.0, 229.0, 21.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "color": [ 0.0, 1.0, 0.694117647058824, 1.0 ],
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 751.0, 862.0, 327.25, 22.0 ],
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
                    "patching_rect": [ 647.0, 967.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 647.0, 997.0, 31.0, 22.0 ],
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
                    "patching_rect": [ 920.0, 1006.0, 80.0, 22.0 ],
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
                    "patching_rect": [ 680.0, 1014.0, 225.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 594.0, 75.0, 229.0, 21.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "color": [ 0.0, 1.0, 0.694117647058824, 1.0 ],
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 647.0, 1072.0, 327.25, 22.0 ],
                    "text": "poly~ Abl.Map"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-4",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 595.0, 1072.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 595.0, 1102.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 868.0, 1111.0, 80.0, 22.0 ],
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
                    "id": "obj-137",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Abl.MapUi.maxpat",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 628.0, 1119.0, 225.0, 20.0 ],
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
                    "patching_rect": [ 595.0, 1177.0, 327.25, 22.0 ],
                    "text": "poly~ Abl.Map"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.11764705882352941, 0.11764705882352941, 0.11764705882352941, 1.0 ],
                    "bordercolor": [ 0.06666666666666667, 0.06666666666666667, 0.06666666666666667, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-128",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 726.0, 698.0, 44.0, 15.0 ],
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
                            "parameter_longname": "scale top[3]",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "scale top",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 0.7098039215686275, 0.7098039215686275, 0.7098039215686275, 1.0 ],
                    "varname": "scalehigh[3]"
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
                    "patching_rect": [ 622.0, 698.0, 44.0, 15.0 ],
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
                    "patching_rect": [ 570.0, 698.0, 44.0, 15.0 ],
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
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "int", "int" ],
                    "patching_rect": [ 18.0, 182.0, 83.0, 22.0 ],
                    "text": "live.thisdevice"
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
                    "patching_rect": [ 174.5, 193.0, 37.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 33.0, 94.0, 19.0 ],
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
                    "id": "obj-48",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 313.0, 187.0, 49.0, 17.0 ],
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
                            "parameter_longname": "give_antibiotics",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "give_antibiotics",
                            "parameter_speedlim": 0.0,
                            "parameter_type": 2
                        }
                    },
                    "text": "antibiotics",
                    "textcolor": [ 0.1411764705882353, 0.1411764705882353, 0.1411764705882353, 1.0 ],
                    "textoffcolor": [ 0.4117647058823529, 0.4117647058823529, 0.4117647058823529, 1.0 ],
                    "texton": "stop",
                    "varname": "give_antibiotics"
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
                    "id": "obj-122",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 382.0, 77.0, 70.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 100.5, 62.0, 44.0, 48.0 ],
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
                            "parameter_initial": [ 20 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "antibiotics balls",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "antibiotics",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "tricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "antibiotics"
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
                    "id": "obj-121",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 559.0, 184.0, 41.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 147.0, 119.0, 41.0, 48.0 ],
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
                            "parameter_initial": [ 30 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "drop",
                            "parameter_mmax": 500.0,
                            "parameter_mmin": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "drop",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "tricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "drop"
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
                    "id": "obj-119",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.16470588235294117, 0.16470588235294117, 0.16470588235294117, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 649.0, 184.0, 70.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 102.0, 119.0, 41.0, 48.0 ],
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
                            "parameter_initial": [ 4000 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "antibiotics time",
                            "parameter_mmax": 15000.0,
                            "parameter_mmin": 1000.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "cure",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "tricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "cure"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 346.66666666666663, 553.0, 59.0, 22.0 ],
                    "text": "s ---notes"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 382.0, 252.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 300.0, 279.0, 101.0, 22.0 ],
                    "text": "pack antibiotics 0"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 160.0, 279.0, 76.0, 22.0 ],
                    "text": "pack infect 0"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-9",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 471.0, 252.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 471.0, 279.0, 47.0, 22.0 ],
                    "text": "size $1"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 726.0, 595.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 726.0, 567.0, 39.0, 22.0 ],
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
                    "patching_rect": [ 674.0, 595.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 674.0, 567.0, 39.0, 22.0 ],
                    "text": "$1 80"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 622.0, 595.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 622.0, 567.0, 39.0, 22.0 ],
                    "text": "$1 80"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 570.0, 595.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 567.0, 39.0, 22.0 ],
                    "text": "$1 80"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 726.0, 517.0, 40.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 674.0, 517.0, 40.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 622.0, 517.0, 40.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 570.0, 516.0, 40.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 736.0, 669.0, 48.0, 20.0 ],
                    "text": "white"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 684.0, 669.0, 48.0, 20.0 ],
                    "text": "yellow"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 847.0, 252.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 847.0, 279.0, 75.0, 22.0 ],
                    "text": "white_life $1"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 580.0, 669.0, 48.0, 20.0 ],
                    "text": "red"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 633.0, 669.0, 48.0, 20.0 ],
                    "text": "blue"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-79",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 559.0, 252.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 559.0, 279.0, 49.0, 22.0 ],
                    "text": "drop $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-81",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 949.0, 252.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 949.0, 279.0, 76.0, 22.0 ],
                    "text": "setSpeed $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-83",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 726.0, 645.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "lcd",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "list", "list", "int", "" ],
                    "patching_rect": [ 160.0, 553.0, 165.0, 166.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 191.0, 3.0, 165.0, 166.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.011764705882353, 0.764705882352941, 0.835294117647059, 1.0 ],
                    "bgcolor2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.011764705882353, 0.764705882352941, 0.835294117647059, 1.0 ],
                    "bgfillcolor_color1": [ 0.011764705882353, 0.764705882352941, 0.835294117647059, 1.0 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 300.0, 221.0, 62.0, 22.0 ],
                    "text": "antibiotics"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 778.0, 646.0, 25.0, 20.0 ],
                    "text": "%"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-91",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 674.0, 645.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-93",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 622.0, 645.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-94",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 570.0, 645.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 400.0, 93.0, 20.0 ],
                    "text": "bacterial edition"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "float", "float", "float", "float" ],
                    "patching_rect": [ 570.0, 485.0, 175.0, 22.0 ],
                    "text": "unpack 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 649.0, 252.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 649.0, 279.0, 70.0, 22.0 ],
                    "text": "blue_life $1"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 103.0, 279.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.031372549019608, 0.101960784313725, 1.0 ],
                    "bgcolor2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.031372549019608, 0.101960784313725, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.031372549019608, 0.101960784313725, 1.0 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-102",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 160.0, 221.0, 37.0, 22.0 ],
                    "text": "infect"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 160.0, 399.0, 299.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "infectiousbacterial",
                        "parameter_enable": 0
                    },
                    "text": "js infectiousbacterial"
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
                    "patching_rect": [ 471.0, 87.0, 70.0, 48.0 ],
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
                            "parameter_initial": [ 2 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "balls[1]",
                            "parameter_mmax": 5.0,
                            "parameter_mmin": 2.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "ball size",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.8313725490196079, 0.8313725490196079, 0.8313725490196079, 1.0 ],
                    "tricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "ball_size"
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
                    "patching_rect": [ 949.0, 184.0, 41.0, 48.0 ],
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
                            "parameter_initial": [ 3 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "speed[1]",
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
                    "patching_rect": [ 103.0, 193.0, 37.0, 17.0 ],
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
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-135", 7 ],
                    "source": [ "obj-10", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 6 ],
                    "source": [ "obj-10", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 5 ],
                    "source": [ "obj-10", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 4 ],
                    "source": [ "obj-10", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 3 ],
                    "source": [ "obj-10", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 2 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 1 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 658.5, 350.0, 169.5, 350.0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 112.5, 350.0, 169.5, 350.0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "order": 0,
                    "source": [ "obj-103", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-103", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 1 ],
                    "order": 1,
                    "source": [ "obj-103", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "midpoints": [ 262.8333333333333, 426.6692199707031, 579.5, 426.6692199707031 ],
                    "source": [ "obj-103", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 27.5, 241.25, 112.5, 241.25 ],
                    "source": [ "obj-125", 0 ]
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
                    "destination": [ "obj-138", 0 ],
                    "source": [ "obj-128", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 2 ],
                    "source": [ "obj-135", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "source": [ "obj-135", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 8 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 7 ],
                    "source": [ "obj-137", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 6 ],
                    "source": [ "obj-137", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 5 ],
                    "source": [ "obj-137", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 4 ],
                    "source": [ "obj-137", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 3 ],
                    "source": [ "obj-137", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 2 ],
                    "source": [ "obj-137", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 1 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 8 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 7 ],
                    "source": [ "obj-141", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 6 ],
                    "source": [ "obj-141", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 5 ],
                    "source": [ "obj-141", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 4 ],
                    "source": [ "obj-141", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 3 ],
                    "source": [ "obj-141", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 2 ],
                    "source": [ "obj-141", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 1 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 2 ],
                    "source": [ "obj-142", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 1 ],
                    "source": [ "obj-142", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-173", 1 ]
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
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 25.5, 307.0, 69.0, 307.0, 69.0, 269.0, 112.5, 269.0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 2 ],
                    "source": [ "obj-36", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 1 ],
                    "source": [ "obj-36", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-49", 0 ]
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
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "midpoints": [ 757.5, 242.0, 856.5, 242.0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 1044.5, 350.0, 169.5, 350.0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 480.5, 350.0, 169.5, 350.0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 309.5, 350.0, 169.5, 350.0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 856.5, 350.0, 169.5, 350.0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 1 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-72", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-72", 2 ]
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
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 8 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 568.5, 350.0, 169.5, 350.0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 958.5, 350.0, 169.5, 350.0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-96", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-96", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-96", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-98", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10::obj-103": [ "border[2]", "border", 0 ],
            "obj-10::obj-2": [ "mode[1]", "Modulation", 0 ],
            "obj-10::obj-25": [ "Map[1]", "Map", 0 ],
            "obj-10::obj-26": [ "border[1]", "border", 0 ],
            "obj-10::obj-30": [ "Unmap[1]", "Unmap", 0 ],
            "obj-10::obj-32": [ "TargetMax[1]", "Max", 0 ],
            "obj-10::obj-33": [ "TargetMin[1]", "Min", 0 ],
            "obj-10::obj-6": [ "Modulation Polarity 1[1]", "Polarity", 0 ],
            "obj-10::obj-9": [ "Modulation Amount 1[1]", "ModAmount", 0 ],
            "obj-119": [ "antibiotics time", "cure", 0 ],
            "obj-121": [ "drop", "drop", 0 ],
            "obj-122": [ "antibiotics balls", "antibiotics", 0 ],
            "obj-126": [ "scale top[1]", "scale top", 0 ],
            "obj-128": [ "scale top[3]", "scale top", 0 ],
            "obj-137::obj-103": [ "border[17]", "border", 0 ],
            "obj-137::obj-2": [ "mode[11]", "Modulation", 0 ],
            "obj-137::obj-25": [ "Map[16]", "Map", 0 ],
            "obj-137::obj-26": [ "border[10]", "border", 0 ],
            "obj-137::obj-30": [ "Unmap[17]", "Unmap", 0 ],
            "obj-137::obj-32": [ "TargetMax[7]", "Max", 0 ],
            "obj-137::obj-33": [ "TargetMin[7]", "Min", 0 ],
            "obj-137::obj-6": [ "Modulation Polarity 1", "Polarity", 0 ],
            "obj-137::obj-9": [ "Modulation Amount 1", "ModAmount", 0 ],
            "obj-141::obj-103": [ "border[18]", "border", 0 ],
            "obj-141::obj-2": [ "mode[2]", "Modulation", 0 ],
            "obj-141::obj-25": [ "Map[3]", "Map", 0 ],
            "obj-141::obj-26": [ "border[19]", "border", 0 ],
            "obj-141::obj-30": [ "Unmap[3]", "Unmap", 0 ],
            "obj-141::obj-32": [ "TargetMax[3]", "Max", 0 ],
            "obj-141::obj-33": [ "TargetMin[3]", "Min", 0 ],
            "obj-141::obj-6": [ "Modulation Polarity 1[3]", "Polarity", 0 ],
            "obj-141::obj-9": [ "Modulation Amount 1[3]", "ModAmount", 0 ],
            "obj-173": [ "scale top", "scale top", 0 ],
            "obj-48": [ "give_antibiotics", "give_antibiotics", 0 ],
            "obj-49": [ "reset", "reset", 0 ],
            "obj-50": [ "infect", "infect", 0 ],
            "obj-53": [ "speed[1]", "speed", 0 ],
            "obj-60": [ "mitosis", "mitosis", 0 ],
            "obj-74": [ "auto-reinfect[1]", "auto-reinfect", 0 ],
            "obj-89": [ "balls[1]", "ball size", 0 ],
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
                    "parameter_longname": "TargetMax[1]"
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
                "obj-141::obj-103": {
                    "parameter_longname": "border[18]"
                },
                "obj-141::obj-2": {
                    "parameter_longname": "mode[2]"
                },
                "obj-141::obj-25": {
                    "parameter_longname": "Map[3]"
                },
                "obj-141::obj-26": {
                    "parameter_longname": "border[19]"
                },
                "obj-141::obj-30": {
                    "parameter_longname": "Unmap[3]"
                },
                "obj-141::obj-32": {
                    "parameter_longname": "TargetMax[3]"
                },
                "obj-141::obj-33": {
                    "parameter_longname": "TargetMin[3]"
                },
                "obj-141::obj-6": {
                    "parameter_longname": "Modulation Polarity 1[3]"
                },
                "obj-141::obj-9": {
                    "parameter_longname": "Modulation Amount 1[3]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}