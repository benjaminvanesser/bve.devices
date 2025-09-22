{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 58.0, 104.0, 640.0, 680.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"blinkcolor" : [ 0.4274509804, 0.8431372549, 1.0, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 430.0, 98.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 68.0, 7.0, 10.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 94.0, 101.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"activebgoncolor" : [ 0.4274509804, 0.8431372549, 1.0, 1.0 ],
					"activetextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"id" : "obj-12",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 94.0, 80.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 22.0, 69.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "reset[1]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "reset",
							"parameter_type" : 2
						}

					}
,
					"text" : "off",
					"texton" : "on",
					"varname" : "reset[1]"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 152.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light Regular",
					"id" : "obj-15",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 394.0, 379.666664000000083, 45.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 55.0, 17.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 2.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "countermax[1]",
							"parameter_mmax" : 32.0,
							"parameter_mmin" : 1.0,
							"parameter_shortname" : "countermax",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "countermax[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 213.0, 58.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-28",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 265.5, 537.666687000000024, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 447.0, 418.833332000000041, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 442.833332000000041, 77.0, 22.0 ],
					"text" : "prepend size"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-23",
					"ignoreclick" : 1,
					"knobcolor" : [ 0.4274509804, 0.8431372549, 1.0, 1.0 ],
					"knobshape" : 4,
					"maxclass" : "slider",
					"min" : 1.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 492.166664000000083, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.0, 107.333332000000041, 75.0, 10.0 ],
					"size" : 3.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 394.0, 418.833332000000041, 48.0, 22.0 ],
					"text" : "max $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light Regular",
					"fontsize" : 9.5,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 23.0, 52.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 106.0, 60.0, 31.0, 18.0 ],
					"text" : "mode",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light Regular",
					"fontsize" : 9.5,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 23.0, 52.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 34.0, 43.0, 18.0 ],
					"text" : "duration",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light Regular",
					"fontsize" : 9.5,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 23.0, 52.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 127.0, 6.0, 21.0, 18.0 ],
					"text" : "vel",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light Regular",
					"fontsize" : 9.5,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 23.0, 52.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 92.0, 6.0, 29.0, 18.0 ],
					"text" : "pitch",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light Regular",
					"fontsize" : 9.5,
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 23.0, 52.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 37.5, 58.0, 18.0 ],
					"text" : "internal max",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light Regular",
					"fontsize" : 9.5,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 23.0, 52.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 54.0, 52.0, 18.0 ],
					"text" : "global max",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 265.5, 457.666664000000083, 79.0, 22.0 ],
					"text" : "counter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 107.0, 202.333332000000041, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 0.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Light Regular",
					"gradient" : 1,
					"id" : "obj-13",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, -2.0, 82.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 2.0, 68.0, 23.0 ],
					"text" : "cascade #1",
					"textcolor" : [ 0.847058823529412, 0.847058823529412, 0.847058823529412, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"fontname" : "Arial",
					"id" : "obj-63",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 142.0, 328.333332000000041, 42.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 121.0, 21.0, 34.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 100 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "velocity[2]",
							"parameter_shortname" : "velocity",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "velocity[1]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"fontname" : "Arial",
					"hltcolor" : [ 0.4274509804, 0.8431372549, 1.0, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 228.0, 391.333332000000041, 40.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.0, 48.0, 67.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "1nd", "1n", "1nt", "2nd", "2n", "2nt", "4nd", "4n", "4nt", "8nd", "8n", "8nt", "16nd", "16n", "16nt", "32nd", "32n", "32nt", "64nd", "64n", "128n" ],
							"parameter_initial" : [ 13 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "duration_q",
							"parameter_mmax" : 20,
							"parameter_order" : 2,
							"parameter_shortname" : "duration_q",
							"parameter_speedlim" : 0.0,
							"parameter_type" : 2
						}

					}
,
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"tricolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"varname" : "duration_q"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.0, 347.666664000000083, 54.0, 22.0 ],
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 107.0, 295.0, 51.5, 22.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 139.5, 271.0, 42.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.0, 21.0, 34.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 72.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.numbox[6]",
							"parameter_shortname" : "note",
							"parameter_type" : 0,
							"parameter_unitstyle" : 8
						}

					}
,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "note[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 331.0, 129.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 331.0, 153.0, 77.0, 22.0 ],
					"text" : "prepend size"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"id" : "obj-33",
					"ignoreclick" : 1,
					"knobcolor" : [ 0.976470588235294, 0.792156862745098, 0.058823529411765, 1.0 ],
					"knobshape" : 4,
					"maxclass" : "slider",
					"min" : 1.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 331.0, 202.333332000000041, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.0, 93.0, 75.0, 10.0 ],
					"size" : 9.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 273.0, 129.0, 48.0, 22.0 ],
					"text" : "max $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 213.0, 129.0, 61.0, 22.0 ],
					"text" : "setmin $1"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light Regular",
					"id" : "obj-27",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 273.0, 101.0, 45.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 39.0, 17.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 8.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "countermax",
							"parameter_mmax" : 32.0,
							"parameter_mmin" : 1.0,
							"parameter_shortname" : "countermax",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "countermax"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-26",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 213.0, 101.0, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "countermin",
							"parameter_mmax" : 31.0,
							"parameter_mmin" : 1.0,
							"parameter_shortname" : "countermin",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "countermin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 152.0, 124.0, 22.0, 22.0 ],
					"text" : "t 0"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"activebgoncolor" : [ 0.4274509804, 0.8431372549, 1.0, 1.0 ],
					"activetextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"id" : "obj-24",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 152.0, 100.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 72.0, 69.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "reset",
							"parameter_mmax" : 1,
							"parameter_shortname" : "reset",
							"parameter_type" : 2
						}

					}
,
					"text" : "reset",
					"varname" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.0, 457.666664000000083, 151.0, 22.0 ],
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 107.0, 419.666664000000083, 151.0, 22.0 ],
					"text" : "makenote @repeatmode 1"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"hltcolor" : [ 0.427450980392157, 0.843137254901961, 1.0, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 50.0, 129.0, 51.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.0, 74.0, 67.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "forward", "backward", "palindrome" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "mode",
							"parameter_mmax" : 2,
							"parameter_order" : 10,
							"parameter_shortname" : "mode",
							"parameter_speedlim" : 0.0,
							"parameter_type" : 2
						}

					}
,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"tricolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 107.0, 165.0, 79.0, 22.0 ],
					"text" : "counter"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-90",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-91",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 107.0, 537.666687000000024, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"id" : "obj-31",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 387.0, 202.333332000000041, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.0, 3.0, 75.0, 120.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 394.0, 202.333332000000041, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 3.0, 158.0, 120.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 275.0, 485.416664000000083, 456.5, 485.416664000000083 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"midpoints" : [ 116.5, 342.333332000000041, 116.5, 342.333332000000041 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 2 ],
					"midpoints" : [ 248.0, 412.499998000000005, 248.5, 412.499998000000005 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 403.5, 406.249998000000062, 456.5, 406.249998000000062 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 116.5, 195.0, 340.5, 195.0 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"midpoints" : [ 59.5, 154.0, 131.5, 154.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 403.5, 448.749998000000062, 275.0, 448.749998000000062 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"midpoints" : [ 161.5, 156.333332000000041, 320.0, 156.333332000000041 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 3 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 282.5, 122.0, 340.5, 122.0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 222.5, 303.833332000000041, 275.0, 303.833332000000041 ],
					"order" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 222.5, 156.5, 116.5, 156.5 ],
					"order" : 1,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 282.5, 156.5, 116.5, 156.5 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 116.5, 393.166664000000083, 116.5, 393.166664000000083 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 116.5, 232.666666000000021, 275.0, 232.666666000000021 ],
					"order" : 1,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 116.5, 282.5, 116.5, 282.5 ],
					"order" : 2,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 0,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"source" : [ "obj-90", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11" : [ "live.numbox[6]", "note", 0 ],
			"obj-12" : [ "reset[1]", "reset", 0 ],
			"obj-14" : [ "duration_q", "duration_q", 2 ],
			"obj-15" : [ "countermax[1]", "countermax", 0 ],
			"obj-17" : [ "mode", "mode", 10 ],
			"obj-24" : [ "reset", "reset", 0 ],
			"obj-26" : [ "countermin", "countermin", 0 ],
			"obj-27" : [ "countermax", "countermax", 0 ],
			"obj-63" : [ "velocity[2]", "velocity", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
