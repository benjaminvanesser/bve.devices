{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 1025.0, 787.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 47.0, 324.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2039215686, 0.2039215686, 0.2039215686, 1.0 ],
					"activebgoncolor" : [ 0.4274509804, 0.8431372549, 1.0, 1.0 ],
					"activetextcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-123",
					"lcdcolor" : [ 0.427450980392157, 0.843137254901961, 1.0, 1.0 ],
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2.5, 348.5, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.126972000000023, 76.0, 34.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_shortname" : "follow",
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_type" : 2,
							"parameter_longname" : "follow",
							"parameter_mmax" : 1
						}

					}
,
					"text" : "follow",
					"texton" : "follow",
					"varname" : "follow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2.5, 375.5, 63.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.5, 288.0, 149.0, 22.0 ],
					"text" : "r usautomatorchangebang"
				}

			}
, 			{
				"box" : 				{
					"comment" : "reset",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 639.92157506942749, 46.815460205078125, 30.0, 30.0 ],
					"varname" : "reset"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-129",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 72.0, 79.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 4,
					"presentation_rect" : [ 4.626972000000023, 125.0, 73.0, 47.0 ],
					"text" : "use [route] with the instance number to split up automations",
					"textcolor" : [ 0.4274509804, 0.8431372549, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 50 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-48",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2700.774533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[50]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 51 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-49",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2465.774533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[51]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 52 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-50",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2230.774533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[52]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 53 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-51",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1995.774533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[53]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 54 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-52",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1760.774533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[54]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 55 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-53",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1525.774533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[55]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 56 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-54",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1290.774533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[56]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 57 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-55",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1055.774533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[57]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 58 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-56",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 820.774533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[58]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 59 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-57",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 586.274533748626709, 1793.372637748718262, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[59]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 60 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-58",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2665.480413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[60]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 61 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-59",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2430.480413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[61]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 62 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-60",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2195.480413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[62]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 63 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-61",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1960.480413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[63]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 64 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-62",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1725.480413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[64]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 65 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-63",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1490.480413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[65]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 66 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-64",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1255.480413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[66]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 67 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-65",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1020.480413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[67]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 68 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-66",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 785.480413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[68]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 69 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-67",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 550.980413913726807, 1632.588314056396484, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[69]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 70 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-71",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2624.303940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[70]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 71 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-74",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2389.303940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[71]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 72 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-75",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2154.303940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[72]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 73 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-76",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1919.303940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.720390598175072, 30.532896041870117, 218.0, 150.0 ],
					"varname" : "autobp[73]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 74 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-77",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1684.303940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[74]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 75 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-78",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1449.303940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[75]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 76 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-80",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1214.303940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[76]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 77 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-81",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 979.303940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[77]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 78 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-82",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 744.303940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[78]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 79 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-83",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 509.803940773010254, 1471.803990364074707, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[79]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 80 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-84",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2567.441192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[80]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 81 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-85",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2332.441192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[81]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 82 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-86",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2097.441192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[82]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 83 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-87",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1862.441192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[83]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 84 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-88",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1627.441192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[84]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 85 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-89",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1392.441192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[85]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 86 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-91",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1157.441192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[86]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 87 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-92",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 922.441192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[87]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 88 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-93",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 687.441192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[88]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 89 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-94",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 452.941192150115967, 1312.980451107025146, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[89]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 90 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-99",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2520.382365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[90]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 91 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-100",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2285.382365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[91]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 92 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-108",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2050.382365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[92]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 93 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-110",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1815.382365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[93]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 94 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-111",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1580.382365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[94]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 95 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-112",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1345.382365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[95]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 96 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-113",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1110.382365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[96]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 97 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-114",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 875.382365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[97]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 98 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-115",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 640.382365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.483026306030297, 30.517399311065674, 218.0, 150.0 ],
					"varname" : "autobp[98]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 99 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-116",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 405.882365703582764, 1154.156911849975586, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[99]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 40 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-37",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2494.892168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[40]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 41 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-38",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2259.892168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[41]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 42 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-40",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2024.892168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[42]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 43 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-41",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1789.892168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[43]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 44 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-42",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1554.892168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[44]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 45 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-43",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1319.892168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[45]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 46 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-44",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1084.892168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[46]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 47 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-45",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 849.892168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[47]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 48 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-46",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 614.892168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[48]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 49 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-47",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 380.392168045043945, 1001.215725898742676, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[49]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 30 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-27",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2459.598048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[30]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 31 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-28",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2224.598048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[31]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 32 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-29",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1989.598048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[32]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 33 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-30",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1754.598048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[33]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 34 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-31",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1519.598048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[34]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 35 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-32",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1284.598048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[35]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 36 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-33",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1049.598048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[36]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 37 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-34",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 814.598048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[37]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 38 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-35",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 579.598048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[38]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 39 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-36",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 345.098048210144043, 840.431402206420898, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[39]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 20 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-15",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2418.42157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[20]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 21 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-17",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2183.42157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[21]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 22 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-18",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1948.42157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[22]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 23 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-19",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1713.42157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[23]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 24 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-20",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1478.42157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[24]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 25 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-21",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1243.42157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[25]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 26 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-23",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1008.42157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[26]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 27 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-24",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 773.42157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[27]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 28 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-25",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 538.42157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[28]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 29 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-26",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 303.92157506942749, 679.647078514099121, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[29]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 10 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2361.558826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[10]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 11 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2126.558826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[11]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 12 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1891.558826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[12]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 13 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-8",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1656.558826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[13]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 14 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-9",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1421.558826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[14]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 15 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1186.558826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[15]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 16 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-11",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 951.558826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[16]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 17 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 716.558826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[17]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 18 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-13",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 481.558826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[18]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 19 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 247.058826446533203, 520.823539257049561, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.571006774902344, 218.0, 150.0 ],
					"varname" : "autobp[19]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 87.0, 29.5, 22.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 277.0, 166.0, 22.0 ],
									"text" : "sprintf script hide autobp[%ld]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 240.5, 214.0, 29.5, 22.0 ],
									"text" : "t i b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 230.0, 248.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 277.0, 171.0, 22.0 ],
									"text" : "sprintf script show autobp[%ld]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 354.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-114", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 1 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 239.5, 326.0, 59.5, 326.0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"midpoints" : [ 59.5, 167.5, 250.0, 167.5 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 46.5, 464.0, 63.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p scripting"
				}

			}
, 			{
				"box" : 				{
					"comment" : "bang",
					"id" : "obj-39",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 414.0, 46.815460205078125, 30.0, 30.0 ],
					"varname" : "banginlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "transport (list: bars and beats)",
					"id" : "obj-90",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 46.815460205078125, 30.0, 30.0 ],
					"varname" : "transportinlet"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 46.5, 710.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"linecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2.5, 11.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 31.571006774902344, 7.0, 148.928993225097656 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 92.5, 404.5, 79.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.626972000000023, 42.0, 69.0, 17.0 ],
					"text" : "select instance",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bordercolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ],
					"focusbordercolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-79",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 46.5, 404.5, 44.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.626972000000023, 60.0, 33.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_shortname" : "instance",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0,
							"parameter_mmin" : 1.0,
							"parameter_longname" : "instance",
							"parameter_initial_enable" : 1,
							"parameter_mmax" : 100.0,
							"parameter_initial" : [ 0 ]
						}

					}
,
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"varname" : "instance"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 9 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-106",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2314.5, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[9]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 8 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-105",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2079.5, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[8]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 7 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-104",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1844.5, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[7]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 6 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-103",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1609.5, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[6]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 5 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-102",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1374.5, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[5]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 4 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-101",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1139.5, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[4]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 3 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-98",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 904.5, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 2 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-97",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 669.5, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-96",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 434.5, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 0 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-95",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "autobp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 200.0, 362.0, 233.0, 149.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.626972000000023, 30.5, 218.0, 150.0 ],
					"varname" : "autobp[0]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 45.5, 142.47283935546875, 56.0, 22.0 ],
					"restore" : 					{
						"follow" : [ 1.0 ],
						"instance" : [ 16.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u053007611"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"linecolor" : [ 0.843137254901961, 0.843137254901961, 0.843137254901961, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2.5, 15.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 29.571006774902344, 298.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hint" : "program cues",
					"id" : "obj-1456",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.5, 46.815460205078125, 67.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 131.0, 6.571006774902344, 36.0, 20.0 ],
					"text" : "cues",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bordercolor" : [ 0.4274509804, 0.8431372549, 1.0, 1.0 ],
					"hint" : "",
					"id" : "obj-73",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.5, 6.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 298.0, 181.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"comment" : "list: instance number, custom value (0-127)",
					"id" : "obj-70",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.95201575756073, 1994.375936508178711, 30.0, 30.0 ],
					"varname" : "customoutlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "instance number, bang",
					"id" : "obj-69",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 206.45201575756073, 1994.375936508178711, 30.0, 30.0 ],
					"varname" : "bangoutlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "list: instance number, toggle (0, 1)",
					"id" : "obj-68",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 297.95201575756073, 1994.375936508178711, 30.0, 30.0 ],
					"varname" : "toggleoutlet"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"order" : 99,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 2 ],
					"order" : 98,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 2 ],
					"order" : 97,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 2 ],
					"order" : 96,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 2 ],
					"order" : 95,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 2 ],
					"order" : 94,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 2 ],
					"order" : 93,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 2 ],
					"order" : 92,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 2 ],
					"order" : 91,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 2 ],
					"order" : 90,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 2 ],
					"order" : 89,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 2 ],
					"order" : 88,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 2 ],
					"order" : 87,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 2 ],
					"order" : 86,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 2 ],
					"order" : 85,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 2 ],
					"order" : 84,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 2 ],
					"order" : 83,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 2 ],
					"order" : 82,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 2 ],
					"order" : 81,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 2 ],
					"order" : 80,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 2 ],
					"order" : 79,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 2 ],
					"order" : 78,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 2 ],
					"order" : 77,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 2 ],
					"order" : 76,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"order" : 75,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 2 ],
					"order" : 74,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 2 ],
					"order" : 73,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"order" : 72,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 2 ],
					"order" : 71,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 2 ],
					"order" : 70,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 2 ],
					"order" : 69,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 2 ],
					"order" : 68,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 2 ],
					"order" : 67,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 2 ],
					"order" : 66,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 2 ],
					"order" : 65,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 2 ],
					"order" : 64,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 2 ],
					"order" : 63,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 2 ],
					"order" : 62,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 2 ],
					"order" : 61,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 2 ],
					"order" : 60,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 2 ],
					"order" : 59,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 2 ],
					"order" : 58,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 2 ],
					"order" : 57,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 2 ],
					"order" : 56,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 2 ],
					"order" : 55,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 2 ],
					"order" : 54,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 2 ],
					"order" : 53,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 2 ],
					"order" : 52,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 2 ],
					"order" : 51,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 2 ],
					"order" : 50,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 2 ],
					"order" : 49,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 2 ],
					"order" : 48,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"order" : 47,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 2 ],
					"order" : 46,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 2 ],
					"order" : 45,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 2 ],
					"order" : 44,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 2 ],
					"order" : 43,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 2 ],
					"order" : 42,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 2 ],
					"order" : 41,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 2 ],
					"order" : 40,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 2 ],
					"order" : 39,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 2 ],
					"order" : 38,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 2 ],
					"order" : 37,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"order" : 36,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 2 ],
					"order" : 35,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 2 ],
					"order" : 34,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 2 ],
					"order" : 33,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 2 ],
					"order" : 32,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 2 ],
					"order" : 31,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 2 ],
					"order" : 30,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 2 ],
					"order" : 29,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 2 ],
					"order" : 28,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 2 ],
					"order" : 27,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 2 ],
					"order" : 26,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 2 ],
					"order" : 25,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 2 ],
					"order" : 24,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 2 ],
					"order" : 23,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 2 ],
					"order" : 22,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 2 ],
					"order" : 21,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 2 ],
					"order" : 20,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 2 ],
					"order" : 19,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 2 ],
					"order" : 18,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 2 ],
					"order" : 17,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 2 ],
					"order" : 16,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 2 ],
					"order" : 15,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 2 ],
					"order" : 14,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 2 ],
					"order" : 13,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 2 ],
					"order" : 12,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 2 ],
					"order" : 11,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 2 ],
					"order" : 10,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 2 ],
					"order" : 9,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 2 ],
					"order" : 8,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 2 ],
					"order" : 7,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 2 ],
					"order" : 6,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 2 ],
					"order" : 5,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 2 ],
					"order" : 4,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 2 ],
					"order" : 3,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 2 ],
					"order" : 2,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 2 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 2 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-100", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-100", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-101", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-101", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-102", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-102", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-103", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-103", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-104", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-104", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-105", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-105", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-106", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-106", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-108", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-108", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-11", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-110", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-111", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-111", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-112", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-113", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-113", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-114", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-114", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-115", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-115", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-116", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-116", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 1 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-13", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-15", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-17", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-18", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-19", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-20", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-21", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-23", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-25", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-26", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-27", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-29", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-30", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-31", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-33", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-34", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-35", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-36", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-37", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"order" : 99,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 1 ],
					"order" : 98,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 1 ],
					"order" : 97,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 1 ],
					"order" : 96,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 1 ],
					"order" : 95,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 1 ],
					"order" : 94,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 1 ],
					"order" : 93,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 1 ],
					"order" : 92,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 1 ],
					"order" : 91,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"order" : 90,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 1 ],
					"order" : 89,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 1 ],
					"order" : 88,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 1 ],
					"order" : 87,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 1 ],
					"order" : 86,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 1 ],
					"order" : 85,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 1 ],
					"order" : 84,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 1 ],
					"order" : 83,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"order" : 82,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"order" : 81,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"order" : 80,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"order" : 79,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 78,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"order" : 77,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"order" : 76,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"order" : 75,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"order" : 74,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"order" : 73,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"order" : 72,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"order" : 71,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 70,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"order" : 69,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"order" : 68,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"order" : 67,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"order" : 66,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"order" : 65,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"order" : 64,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"order" : 63,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"order" : 62,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"order" : 61,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"order" : 60,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"order" : 59,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"order" : 58,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"order" : 57,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"order" : 56,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"order" : 55,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"order" : 54,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"order" : 53,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"order" : 52,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"order" : 51,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"order" : 50,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"order" : 49,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"order" : 48,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"order" : 47,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"order" : 46,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"order" : 45,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"order" : 44,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"order" : 43,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"order" : 42,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"order" : 41,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"order" : 40,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"order" : 39,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"order" : 38,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"order" : 37,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 36,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"order" : 35,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"order" : 34,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 1 ],
					"order" : 33,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 1 ],
					"order" : 32,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"order" : 31,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"order" : 30,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 1 ],
					"order" : 29,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"order" : 28,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"order" : 27,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 1 ],
					"order" : 26,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"order" : 25,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"order" : 24,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 1 ],
					"order" : 23,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 1 ],
					"order" : 22,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"order" : 21,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"order" : 20,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 1 ],
					"order" : 19,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 1 ],
					"order" : 18,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 1 ],
					"order" : 17,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"order" : 16,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 1 ],
					"order" : 15,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 1 ],
					"order" : 14,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 1 ],
					"order" : 13,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 1 ],
					"order" : 12,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 1 ],
					"order" : 11,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"order" : 10,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"order" : 9,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 1 ],
					"order" : 8,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 1 ],
					"order" : 7,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 1 ],
					"order" : 6,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 1 ],
					"order" : 5,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 1 ],
					"order" : 4,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 1 ],
					"order" : 3,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 1 ],
					"order" : 2,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 1 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 1 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-40", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-41", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-42", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-43", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-44", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-45", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-45", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-46", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-46", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-47", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-48", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-49", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-50", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-51", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-52", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-53", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-54", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-55", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-57", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-58", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-59", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-60", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-61", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-62", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-63", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-64", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-65", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-65", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-66", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-66", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-67", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-67", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-71", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-74", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-75", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-76", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-76", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-77", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-78", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-78", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-80", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-80", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-81", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-81", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-82", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-82", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-83", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-83", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-84", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-84", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-85", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-85", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-86", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-86", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-87", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-87", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-88", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-88", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-89", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-89", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-9", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 99,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"order" : 98,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"order" : 97,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"order" : 96,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"order" : 95,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"order" : 94,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"order" : 93,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"order" : 92,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"order" : 91,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 90,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"order" : 89,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"order" : 88,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"order" : 87,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"order" : 86,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"order" : 85,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"order" : 84,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"order" : 83,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 82,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 81,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 80,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 79,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 78,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 77,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 76,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 75,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 74,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 73,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 72,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 71,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 70,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 69,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 68,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 67,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 66,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 65,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 64,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 63,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 62,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 61,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 60,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 59,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 58,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 57,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"order" : 56,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 55,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 54,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 53,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 52,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 51,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 50,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"order" : 49,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 48,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 47,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"order" : 46,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"order" : 45,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"order" : 44,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"order" : 43,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"order" : 42,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"order" : 41,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"order" : 40,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"order" : 39,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"order" : 38,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"order" : 37,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 36,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"order" : 35,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 34,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"order" : 33,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"order" : 32,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"order" : 31,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"order" : 30,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"order" : 29,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"order" : 28,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 27,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"order" : 26,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"order" : 25,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"order" : 24,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"order" : 23,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 22,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"order" : 21,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 20,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"order" : 19,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"order" : 18,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"order" : 17,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"order" : 16,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"order" : 15,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"order" : 14,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"order" : 13,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"order" : 12,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"order" : 11,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"order" : 10,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 9,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"order" : 8,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"order" : 7,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"order" : 6,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"order" : 5,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"order" : 4,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"order" : 3,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"order" : 2,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"order" : 1,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"order" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-91", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-91", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-92", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-92", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-93", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-93", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-94", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-95", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-95", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-96", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-96", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-97", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-97", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-98", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-98", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-99", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-99", 2 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-102::obj-10" : [ "bar[11]", "bar", 0 ],
			"obj-14::obj-26" : [ "counter[19]", "counter", 0 ],
			"obj-8::obj-578" : [ "ramp_time[13]", "ramp_time", 0 ],
			"obj-26::obj-578" : [ "ramp_time[29]", "ramp_time", 0 ],
			"obj-20::obj-17" : [ "custom_value[24]", "custom value", 0 ],
			"obj-19::obj-57" : [ "transportreset[73]", "transportreset", 0 ],
			"obj-36::obj-26" : [ "counter[39]", "counter", 0 ],
			"obj-31::obj-10" : [ "beat[24]", "beat", 0 ],
			"obj-47::obj-9" : [ "bar[59]", "bar", 0 ],
			"obj-37::obj-1" : [ "counter_incomingval[50]", "counter_incomingval", 0 ],
			"obj-112::obj-73" : [ "initial_value[45]", "initial_value", 0 ],
			"obj-99::obj-1" : [ "counter_incomingval[40]", "counter_incomingval", 0 ],
			"obj-89::obj-67" : [ "toggle[85]", "toggle", 0 ],
			"obj-84::obj-17" : [ "custom_value[80]", "custom value", 0 ],
			"obj-71::obj-26" : [ "counter[70]", "counter", 0 ],
			"obj-64::obj-578" : [ "ramp_time[66]", "ramp_time", 0 ],
			"obj-56::obj-10" : [ "beat[48]", "beat", 0 ],
			"obj-98::obj-1" : [ "counter_incomingval[96]", "counter_incomingval", 0 ],
			"obj-105::obj-26" : [ "counter[8]", "counter", 0 ],
			"obj-12::obj-55" : [ "counterreset[87]", "counterreset", 0 ],
			"obj-10::obj-55" : [ "counterreset[85]", "counterreset", 0 ],
			"obj-6::obj-55" : [ "counterreset[81]", "counterreset", 0 ],
			"obj-23::obj-578" : [ "ramp_time[26]", "ramp_time", 0 ],
			"obj-17::obj-578" : [ "ramp_time[21]", "ramp_time", 0 ],
			"obj-33::obj-57" : [ "transportreset[66]", "transportreset", 0 ],
			"obj-29::obj-26" : [ "counter[32]", "counter", 0 ],
			"obj-45::obj-57" : [ "transportreset[57]", "transportreset", 0 ],
			"obj-40::obj-578" : [ "ramp_time[42]", "ramp_time", 0 ],
			"obj-114::obj-79" : [ "destination_value[97]", "destination_value", 0 ],
			"obj-108::obj-73" : [ "initial_value[42]", "initial_value", 0 ],
			"obj-93::obj-26" : [ "counter[88]", "counter", 0 ],
			"obj-86::obj-55" : [ "counterreset[32]", "counterreset", 0 ],
			"obj-82::obj-17" : [ "custom_value[78]", "custom value", 0 ],
			"obj-75::obj-57" : [ "transportreset[22]", "transportreset", 0 ],
			"obj-66::obj-55" : [ "counterreset[18]", "counterreset", 0 ],
			"obj-61::obj-578" : [ "ramp_time[63]", "ramp_time", 0 ],
			"obj-58::obj-55" : [ "counterreset[10]", "counterreset", 0 ],
			"obj-54::obj-57" : [ "transportreset[6]", "transportreset", 0 ],
			"obj-49::obj-578" : [ "ramp_time[51]", "ramp_time", 0 ],
			"obj-95::obj-57" : [ "transportreset[99]", "transportreset", 0 ],
			"obj-96::obj-73" : [ "initial_value[98]", "initial_value", 0 ],
			"obj-103::obj-55" : [ "counterreset[93]", "counterreset", 0 ],
			"obj-14::obj-55" : [ "counterreset[89]", "counterreset", 0 ],
			"obj-8::obj-57" : [ "transportreset[83]", "transportreset", 0 ],
			"obj-25::obj-10" : [ "beat[18]", "beat", 0 ],
			"obj-20::obj-26" : [ "counter[24]", "counter", 0 ],
			"obj-19::obj-73" : [ "initial_value[73]", "initial_value", 0 ],
			"obj-31::obj-9" : [ "bar[44]", "bar", 0 ],
			"obj-47::obj-10" : [ "beat[39]", "beat", 0 ],
			"obj-42::obj-55" : [ "counterreset[54]", "counterreset", 0 ],
			"obj-37::obj-578" : [ "ramp_time[40]", "ramp_time", 0 ],
			"obj-111::obj-79" : [ "destination_value[94]", "destination_value", 0 ],
			"obj-99::obj-79" : [ "destination_value[90]", "destination_value", 0 ],
			"obj-88::obj-1" : [ "counter_incomingval[34]", "counter_incomingval", 0 ],
			"obj-84::obj-55" : [ "counterreset[30]", "counterreset", 0 ],
			"obj-78::obj-10" : [ "beat[65]", "beat", 0 ],
			"obj-71::obj-578" : [ "ramp_time[70]", "ramp_time", 0 ],
			"obj-63::obj-10" : [ "beat[55]", "beat", 0 ],
			"obj-56::obj-57" : [ "transportreset[8]", "transportreset", 0 ],
			"obj-51::obj-578" : [ "ramp_time[53]", "ramp_time", 0 ],
			"obj-101::obj-57" : [ "transportreset[95]", "transportreset", 0 ],
			"obj-105::obj-55" : [ "counterreset[91]", "counterreset", 0 ],
			"obj-11::obj-17" : [ "custom_value[16]", "custom value", 0 ],
			"obj-10::obj-67" : [ "toggle[15]", "toggle", 0 ],
			"obj-5::obj-55" : [ "counterreset[80]", "counterreset", 0 ],
			"obj-23::obj-57" : [ "transportreset[76]", "transportreset", 0 ],
			"obj-33::obj-79" : [ "destination_value[36]", "destination_value", 0 ],
			"obj-28::obj-1" : [ "counter_incomingval[61]", "counter_incomingval", 0 ],
			"obj-44::obj-73" : [ "initial_value[56]", "initial_value", 0 ],
			"obj-40::obj-57" : [ "transportreset[52]", "transportreset", 0 ],
			"obj-108::obj-1" : [ "counter_incomingval[42]", "counter_incomingval", 0 ],
			"obj-92::obj-55" : [ "counterreset[37]", "counterreset", 0 ],
			"obj-91::obj-1" : [ "counter_incomingval[36]", "counter_incomingval", 0 ],
			"obj-86::obj-26" : [ "counter[82]", "counter", 0 ],
			"obj-81::obj-57" : [ "transportreset[27]", "transportreset", 0 ],
			"obj-75::obj-73" : [ "initial_value[22]", "initial_value", 0 ],
			"obj-61::obj-79" : [ "destination_value[63]", "destination_value", 0 ],
			"obj-58::obj-26" : [ "counter[60]", "counter", 0 ],
			"obj-53::obj-17" : [ "custom_value[55]", "custom value", 0 ],
			"obj-49::obj-26" : [ "counter[51]", "counter", 0 ],
			"obj-79" : [ "instance", "instance", 0 ],
			"obj-96::obj-1" : [ "counter_incomingval[98]", "counter_incomingval", 0 ],
			"obj-103::obj-67" : [ "toggle[6]", "toggle", 0 ],
			"obj-13::obj-67" : [ "toggle[18]", "toggle", 0 ],
			"obj-25::obj-26" : [ "counter[28]", "counter", 0 ],
			"obj-19::obj-79" : [ "destination_value[23]", "destination_value", 0 ],
			"obj-35::obj-1" : [ "counter_incomingval[68]", "counter_incomingval", 0 ],
			"obj-46::obj-10" : [ "beat[38]", "beat", 0 ],
			"obj-42::obj-26" : [ "counter[44]", "counter", 0 ],
			"obj-116::obj-578" : [ "ramp_time[99]", "ramp_time", 0 ],
			"obj-111::obj-55" : [ "counterreset[44]", "counterreset", 0 ],
			"obj-88::obj-55" : [ "counterreset[34]", "counterreset", 0 ],
			"obj-83::obj-10" : [ "beat[69]", "beat", 0 ],
			"obj-78::obj-67" : [ "toggle[75]", "toggle", 0 ],
			"obj-77::obj-79" : [ "destination_value[74]", "destination_value", 0 ],
			"obj-63::obj-578" : [ "ramp_time[65]", "ramp_time", 0 ],
			"obj-60::obj-9" : [ "bar[72]", "bar", 0 ],
			"obj-55::obj-73" : [ "initial_value[7]", "initial_value", 0 ],
			"obj-51::obj-67" : [ "toggle[53]", "toggle", 0 ],
			"obj-101::obj-79" : [ "destination_value[4]", "destination_value", 0 ],
			"obj-11::obj-26" : [ "counter[16]", "counter", 0 ],
			"obj-5::obj-26" : [ "counter[10]", "counter", 0 ],
			"obj-21::obj-1" : [ "counter_incomingval[75]", "counter_incomingval", 0 ],
			"obj-15::obj-26" : [ "counter[20]", "counter", 0 ],
			"obj-33::obj-17" : [ "custom_value[36]", "custom value", 0 ],
			"obj-27::obj-26" : [ "counter[30]", "counter", 0 ],
			"obj-44::obj-1" : [ "counter_incomingval[56]", "counter_incomingval", 0 ],
			"obj-38::obj-10" : [ "beat[31]", "beat", 0 ],
			"obj-113::obj-79" : [ "destination_value[96]", "destination_value", 0 ],
			"obj-92::obj-9" : [ "bar[97]", "bar", 0 ],
			"obj-91::obj-578" : [ "ramp_time[86]", "ramp_time", 0 ],
			"obj-85::obj-10" : [ "beat[71]", "beat", 0 ],
			"obj-81::obj-10" : [ "beat[67]", "beat", 0 ],
			"obj-75::obj-1" : [ "counter_incomingval[22]", "counter_incomingval", 0 ],
			"obj-65::obj-9" : [ "bar[77]", "bar", 0 ],
			"obj-57::obj-57" : [ "transportreset[9]", "transportreset", 0 ],
			"obj-53::obj-9" : [ "bar[65]", "bar", 0 ],
			"obj-48::obj-10" : [ "beat[40]", "beat", 0 ],
			"obj-97::obj-67" : [ "toggle[2]", "toggle", 0 ],
			"obj-13::obj-578" : [ "ramp_time[18]", "ramp_time", 0 ],
			"obj-7::obj-73" : [ "initial_value[82]", "initial_value", 0 ],
			"obj-18::obj-17" : [ "custom_value[22]", "custom value", 0 ],
			"obj-35::obj-578" : [ "ramp_time[38]", "ramp_time", 0 ],
			"obj-30::obj-26" : [ "counter[33]", "counter", 0 ],
			"obj-46::obj-26" : [ "counter[48]", "counter", 0 ],
			"obj-41::obj-55" : [ "counterreset[53]", "counterreset", 0 ],
			"obj-116::obj-79" : [ "destination_value[99]", "destination_value", 0 ],
			"obj-115::obj-578" : [ "ramp_time[98]", "ramp_time", 0 ],
			"obj-111::obj-57" : [ "transportreset[44]", "transportreset", 0 ],
			"obj-94::obj-73" : [ "initial_value[39]", "initial_value", 0 ],
			"obj-83::obj-67" : [ "toggle[79]", "toggle", 0 ],
			"obj-77::obj-9" : [ "bar[84]", "bar", 0 ],
			"obj-77::obj-73" : [ "initial_value[24]", "initial_value", 0 ],
			"obj-67::obj-67" : [ "toggle[69]", "toggle", 0 ],
			"obj-63::obj-55" : [ "counterreset[15]", "counterreset", 0 ],
			"obj-55::obj-1" : [ "counter_incomingval[7]", "counter_incomingval", 0 ],
			"obj-50::obj-55" : [ "counterreset[2]", "counterreset", 0 ],
			"obj-101::obj-17" : [ "custom_value[4]", "custom value", 0 ],
			"obj-106::obj-9" : [ "bar[18]", "bar", 0 ],
			"obj-9::obj-578" : [ "ramp_time[14]", "ramp_time", 0 ],
			"obj-21::obj-578" : [ "ramp_time[25]", "ramp_time", 0 ],
			"obj-15::obj-55" : [ "counterreset[70]", "counterreset", 0 ],
			"obj-32::obj-67" : [ "toggle[35]", "toggle", 0 ],
			"obj-27::obj-55" : [ "counterreset[60]", "counterreset", 0 ],
			"obj-38::obj-67" : [ "toggle[41]", "toggle", 0 ],
			"obj-113::obj-578" : [ "ramp_time[96]", "ramp_time", 0 ],
			"obj-100::obj-79" : [ "destination_value[91]", "destination_value", 0 ],
			"obj-92::obj-67" : [ "toggle[87]", "toggle", 0 ],
			"obj-85::obj-1" : [ "counter_incomingval[31]", "counter_incomingval", 0 ],
			"obj-74::obj-10" : [ "beat[61]", "beat", 0 ],
			"obj-65::obj-1" : [ "counter_incomingval[17]", "counter_incomingval", 0 ],
			"obj-60::obj-1" : [ "counter_incomingval[12]", "counter_incomingval", 0 ],
			"obj-57::obj-578" : [ "ramp_time[59]", "ramp_time", 0 ],
			"obj-48::obj-79" : [ "destination_value[50]", "destination_value", 0 ],
			"obj-95::obj-9" : [ "bar", "bar", 0 ],
			"obj-95::obj-17" : [ "custom_value", "custom value", 0 ],
			"obj-97::obj-9" : [ "bar[5]", "bar", 0 ],
			"obj-104::obj-73" : [ "initial_value[92]", "initial_value", 0 ],
			"obj-13::obj-55" : [ "counterreset[88]", "counterreset", 0 ],
			"obj-7::obj-1" : [ "counter_incomingval[82]", "counter_incomingval", 0 ],
			"obj-24::obj-17" : [ "custom_value[27]", "custom value", 0 ],
			"obj-18::obj-10" : [ "beat[12]", "beat", 0 ],
			"obj-34::obj-79" : [ "destination_value[37]", "destination_value", 0 ],
			"obj-30::obj-55" : [ "counterreset[63]", "counterreset", 0 ],
			"obj-41::obj-26" : [ "counter[43]", "counter", 0 ],
			"obj-115::obj-79" : [ "destination_value[98]", "destination_value", 0 ],
			"obj-110::obj-9" : [ "bar[103]", "bar", 0 ],
			"obj-94::obj-578" : [ "ramp_time[89]", "ramp_time", 0 ],
			"obj-87::obj-9" : [ "bar[93]", "bar", 0 ],
			"obj-76::obj-10" : [ "beat[63]", "beat", 0 ],
			"obj-67::obj-1" : [ "counter_incomingval[19]", "counter_incomingval", 0 ],
			"obj-62::obj-67" : [ "toggle[64]", "toggle", 0 ],
			"obj-59::obj-10" : [ "beat[51]", "beat", 0 ],
			"obj-50::obj-10" : [ "beat[42]", "beat", 0 ],
			"obj-102::obj-67" : [ "toggle[5]", "toggle", 0 ],
			"obj-106::obj-10" : [ "bar[19]", "bar", 0 ],
			"obj-9::obj-67" : [ "toggle[14]", "toggle", 0 ],
			"obj-26::obj-17" : [ "custom_value[29]", "custom value", 0 ],
			"obj-21::obj-57" : [ "transportreset[75]", "transportreset", 0 ],
			"obj-36::obj-73" : [ "initial_value[69]", "initial_value", 0 ],
			"obj-32::obj-73" : [ "initial_value[65]", "initial_value", 0 ],
			"obj-27::obj-67" : [ "toggle[30]", "toggle", 0 ],
			"obj-43::obj-79" : [ "destination_value[45]", "destination_value", 0 ],
			"obj-112::obj-79" : [ "destination_value[95]", "destination_value", 0 ],
			"obj-100::obj-9" : [ "bar[101]", "bar", 0 ],
			"obj-89::obj-578" : [ "ramp_time[85]", "ramp_time", 0 ],
			"obj-85::obj-67" : [ "toggle[81]", "toggle", 0 ],
			"obj-80::obj-73" : [ "initial_value[26]", "initial_value", 0 ],
			"obj-74::obj-57" : [ "transportreset[21]", "transportreset", 0 ],
			"obj-64::obj-26" : [ "counter[66]", "counter", 0 ],
			"obj-57::obj-73" : [ "initial_value[9]", "initial_value", 0 ],
			"obj-52::obj-9" : [ "bar[64]", "bar", 0 ],
			"obj-98::obj-79" : [ "destination_value[3]", "destination_value", 0 ],
			"obj-104::obj-1" : [ "counter_incomingval[92]", "counter_incomingval", 0 ],
			"obj-12::obj-57" : [ "transportreset[87]", "transportreset", 0 ],
			"obj-6::obj-1" : [ "counter_incomingval[81]", "counter_incomingval", 0 ],
			"obj-24::obj-1" : [ "counter_incomingval[77]", "counter_incomingval", 0 ],
			"obj-34::obj-17" : [ "custom_value[37]", "custom value", 0 ],
			"obj-29::obj-73" : [ "initial_value[62]", "initial_value", 0 ],
			"obj-45::obj-79" : [ "destination_value[47]", "destination_value", 0 ],
			"obj-41::obj-17" : [ "custom_value[43]", "custom value", 0 ],
			"obj-114::obj-73" : [ "initial_value[47]", "initial_value", 0 ],
			"obj-110::obj-67" : [ "toggle[93]", "toggle", 0 ],
			"obj-93::obj-73" : [ "initial_value[38]", "initial_value", 0 ],
			"obj-87::obj-67" : [ "toggle[83]", "toggle", 0 ],
			"obj-82::obj-67" : [ "toggle[78]", "toggle", 0 ],
			"obj-76::obj-9" : [ "bar[83]", "bar", 0 ],
			"obj-66::obj-57" : [ "transportreset[18]", "transportreset", 0 ],
			"obj-62::obj-26" : [ "counter[64]", "counter", 0 ],
			"obj-59::obj-26" : [ "counter[61]", "counter", 0 ],
			"obj-54::obj-26" : [ "counter[56]", "counter", 0 ],
			"obj-50::obj-73" : [ "initial_value[2]", "initial_value", 0 ],
			"obj-102::obj-73" : [ "initial_value[94]", "initial_value", 0 ],
			"obj-14::obj-1" : [ "counter_incomingval[89]", "counter_incomingval", 0 ],
			"obj-8::obj-9" : [ "bar[23]", "bar", 0 ],
			"obj-26::obj-9" : [ "bar[39]", "bar", 0 ],
			"obj-20::obj-73" : [ "initial_value[74]", "initial_value", 0 ],
			"obj-36::obj-1" : [ "counter_incomingval[69]", "counter_incomingval", 0 ],
			"obj-47::obj-67" : [ "toggle[49]", "toggle", 0 ],
			"obj-43::obj-9" : [ "bar[55]", "bar", 0 ],
			"obj-37::obj-55" : [ "counterreset[50]", "counterreset", 0 ],
			"obj-112::obj-9" : [ "bar[105]", "bar", 0 ],
			"obj-99::obj-9" : [ "bar[100]", "bar", 0 ],
			"obj-89::obj-73" : [ "initial_value[35]", "initial_value", 0 ],
			"obj-84::obj-26" : [ "counter[80]", "counter", 0 ],
			"obj-80::obj-1" : [ "counter_incomingval[26]", "counter_incomingval", 0 ],
			"obj-64::obj-79" : [ "destination_value[66]", "destination_value", 0 ],
			"obj-56::obj-578" : [ "ramp_time[58]", "ramp_time", 0 ],
			"obj-52::obj-79" : [ "destination_value[54]", "destination_value", 0 ],
			"obj-98::obj-17" : [ "custom_value[3]", "custom value", 0 ],
			"obj-105::obj-1" : [ "counter_incomingval[91]", "counter_incomingval", 0 ],
			"obj-12::obj-10" : [ "beat[7]", "beat", 0 ],
			"obj-6::obj-578" : [ "ramp_time[11]", "ramp_time", 0 ],
			"obj-23::obj-9" : [ "bar[36]", "bar", 0 ],
			"obj-17::obj-9" : [ "bar[31]", "bar", 0 ],
			"obj-29::obj-1" : [ "counter_incomingval[62]", "counter_incomingval", 0 ],
			"obj-45::obj-578" : [ "ramp_time[47]", "ramp_time", 0 ],
			"obj-40::obj-73" : [ "initial_value[52]", "initial_value", 0 ],
			"obj-114::obj-57" : [ "transportreset[47]", "transportreset", 0 ],
			"obj-93::obj-1" : [ "counter_incomingval[38]", "counter_incomingval", 0 ],
			"obj-86::obj-73" : [ "initial_value[32]", "initial_value", 0 ],
			"obj-82::obj-73" : [ "initial_value[28]", "initial_value", 0 ],
			"obj-66::obj-17" : [ "custom_value[68]", "custom value", 0 ],
			"obj-58::obj-10" : [ "beat[50]", "beat", 0 ],
			"obj-54::obj-1" : [ "counter_incomingval[6]", "counter_incomingval", 0 ],
			"obj-49::obj-10" : [ "beat[41]", "beat", 0 ],
			"obj-95::obj-55" : [ "counterreset[99]", "counterreset", 0 ],
			"obj-96::obj-79" : [ "destination_value[1]", "destination_value", 0 ],
			"obj-14::obj-578" : [ "ramp_time[19]", "ramp_time", 0 ],
			"obj-8::obj-10" : [ "beat[3]", "beat", 0 ],
			"obj-25::obj-73" : [ "initial_value[78]", "initial_value", 0 ],
			"obj-20::obj-1" : [ "counter_incomingval[74]", "counter_incomingval", 0 ],
			"obj-19::obj-9" : [ "bar[33]", "bar", 0 ],
			"obj-36::obj-578" : [ "ramp_time[39]", "ramp_time", 0 ],
			"obj-31::obj-1" : [ "counter_incomingval[64]", "counter_incomingval", 0 ],
			"obj-47::obj-73" : [ "initial_value[59]", "initial_value", 0 ],
			"obj-42::obj-10" : [ "beat[34]", "beat", 0 ],
			"obj-37::obj-26" : [ "counter[40]", "counter", 0 ],
			"obj-99::obj-10" : [ "beat[80]", "beat", 0 ],
			"obj-88::obj-57" : [ "transportreset[34]", "transportreset", 0 ],
			"obj-84::obj-67" : [ "toggle[80]", "toggle", 0 ],
			"obj-78::obj-578" : [ "ramp_time[75]", "ramp_time", 0 ],
			"obj-71::obj-10" : [ "beat[60]", "beat", 0 ],
			"obj-56::obj-1" : [ "counter_incomingval[8]", "counter_incomingval", 0 ],
			"obj-51::obj-9" : [ "bar[63]", "bar", 0 ],
			"obj-105::obj-578" : [ "ramp_time[8]", "ramp_time", 0 ],
			"obj-10::obj-57" : [ "transportreset[85]", "transportreset", 0 ],
			"obj-23::obj-10" : [ "beat[16]", "beat", 0 ],
			"obj-17::obj-10" : [ "beat[11]", "beat", 0 ],
			"obj-33::obj-26" : [ "counter[36]", "counter", 0 ],
			"obj-29::obj-578" : [ "ramp_time[32]", "ramp_time", 0 ],
			"obj-28::obj-17" : [ "custom_value[31]", "custom value", 0 ],
			"obj-44::obj-9" : [ "bar[56]", "bar", 0 ],
			"obj-40::obj-17" : [ "custom_value[42]", "custom value", 0 ],
			"obj-114::obj-55" : [ "counterreset[47]", "counterreset", 0 ],
			"obj-108::obj-79" : [ "destination_value[92]", "destination_value", 0 ],
			"obj-86::obj-1" : [ "counter_incomingval[32]", "counter_incomingval", 0 ],
			"obj-81::obj-1" : [ "counter_incomingval[27]", "counter_incomingval", 0 ],
			"obj-75::obj-79" : [ "destination_value[72]", "destination_value", 0 ],
			"obj-66::obj-1" : [ "counter_incomingval[18]", "counter_incomingval", 0 ],
			"obj-61::obj-17" : [ "custom_value[63]", "custom value", 0 ],
			"obj-58::obj-1" : [ "counter_incomingval[10]", "counter_incomingval", 0 ],
			"obj-53::obj-1" : [ "counter_incomingval[5]", "counter_incomingval", 0 ],
			"obj-49::obj-1" : [ "counter_incomingval[1]", "counter_incomingval", 0 ],
			"obj-96::obj-17" : [ "custom_value[1]", "custom value", 0 ],
			"obj-103::obj-57" : [ "transportreset[93]", "transportreset", 0 ],
			"obj-8::obj-26" : [ "counter[13]", "counter", 0 ],
			"obj-25::obj-57" : [ "transportreset[78]", "transportreset", 0 ],
			"obj-19::obj-17" : [ "custom_value[23]", "custom value", 0 ],
			"obj-35::obj-17" : [ "custom_value[38]", "custom value", 0 ],
			"obj-31::obj-17" : [ "custom_value[34]", "custom value", 0 ],
			"obj-42::obj-67" : [ "toggle[44]", "toggle", 0 ],
			"obj-116::obj-67" : [ "toggle[99]", "toggle", 0 ],
			"obj-116::obj-26" : [ "counter[99]", "counter", 0 ],
			"obj-111::obj-26" : [ "counter[94]", "counter", 0 ],
			"obj-99::obj-55" : [ "counterreset[40]", "counterreset", 0 ],
			"obj-88::obj-67" : [ "toggle[84]", "toggle", 0 ],
			"obj-78::obj-79" : [ "destination_value[75]", "destination_value", 0 ],
			"obj-71::obj-9" : [ "bar[80]", "bar", 0 ],
			"obj-63::obj-1" : [ "counter_incomingval[15]", "counter_incomingval", 0 ],
			"obj-51::obj-73" : [ "initial_value[3]", "initial_value", 0 ],
			"obj-101::obj-26" : [ "counter[4]", "counter", 0 ],
			"obj-105::obj-57" : [ "transportreset[91]", "transportreset", 0 ],
			"obj-11::obj-55" : [ "counterreset[86]", "counterreset", 0 ],
			"obj-10::obj-79" : [ "destination_value[15]", "destination_value", 0 ],
			"obj-5::obj-1" : [ "counter_incomingval[80]", "counter_incomingval", 0 ],
			"obj-15::obj-1" : [ "counter_incomingval[70]", "counter_incomingval", 0 ],
			"obj-33::obj-55" : [ "counterreset[66]", "counterreset", 0 ],
			"obj-28::obj-578" : [ "ramp_time[31]", "ramp_time", 0 ],
			"obj-44::obj-55" : [ "counterreset[56]", "counterreset", 0 ],
			"obj-113::obj-17" : [ "custom_value[96]", "custom value", 0 ],
			"obj-108::obj-578" : [ "ramp_time[92]", "ramp_time", 0 ],
			"obj-92::obj-57" : [ "transportreset[37]", "transportreset", 0 ],
			"obj-91::obj-57" : [ "transportreset[36]", "transportreset", 0 ],
			"obj-81::obj-578" : [ "ramp_time[77]", "ramp_time", 0 ],
			"obj-75::obj-9" : [ "bar[82]", "bar", 0 ],
			"obj-65::obj-73" : [ "initial_value[17]", "initial_value", 0 ],
			"obj-61::obj-10" : [ "beat[53]", "beat", 0 ],
			"obj-53::obj-67" : [ "toggle[55]", "toggle", 0 ],
			"obj-97::obj-10" : [ "bar[4]", "bar", 0 ],
			"obj-103::obj-79" : [ "destination_value[6]", "destination_value", 0 ],
			"obj-13::obj-9" : [ "bar[28]", "bar", 0 ],
			"obj-7::obj-79" : [ "destination_value[12]", "destination_value", 0 ],
			"obj-25::obj-578" : [ "ramp_time[28]", "ramp_time", 0 ],
			"obj-18::obj-1" : [ "counter_incomingval[72]", "counter_incomingval", 0 ],
			"obj-35::obj-9" : [ "bar[48]", "bar", 0 ],
			"obj-30::obj-1" : [ "counter_incomingval[63]", "counter_incomingval", 0 ],
			"obj-46::obj-1" : [ "counter_incomingval[58]", "counter_incomingval", 0 ],
			"obj-116::obj-17" : [ "custom_value[99]", "custom value", 0 ],
			"obj-115::obj-26" : [ "counter[98]", "counter", 0 ],
			"obj-111::obj-10" : [ "beat[84]", "beat", 0 ],
			"obj-94::obj-55" : [ "counterreset[39]", "counterreset", 0 ],
			"obj-88::obj-578" : [ "ramp_time[84]", "ramp_time", 0 ],
			"obj-83::obj-79" : [ "destination_value[79]", "destination_value", 0 ],
			"obj-77::obj-57" : [ "transportreset[24]", "transportreset", 0 ],
			"obj-67::obj-79" : [ "destination_value[69]", "destination_value", 0 ],
			"obj-63::obj-79" : [ "destination_value[65]", "destination_value", 0 ],
			"obj-60::obj-10" : [ "beat[52]", "beat", 0 ],
			"obj-55::obj-9" : [ "bar[67]", "bar", 0 ],
			"obj-101::obj-55" : [ "counterreset[95]", "counterreset", 0 ],
			"obj-106::obj-67" : [ "toggle[9]", "toggle", 0 ],
			"obj-9::obj-9" : [ "bar[24]", "bar", 0 ],
			"obj-5::obj-578" : [ "ramp_time[10]", "ramp_time", 0 ],
			"obj-21::obj-26" : [ "counter[25]", "counter", 0 ],
			"obj-15::obj-578" : [ "ramp_time[20]", "ramp_time", 0 ],
			"obj-32::obj-57" : [ "transportreset[65]", "transportreset", 0 ],
			"obj-27::obj-578" : [ "ramp_time[30]", "ramp_time", 0 ],
			"obj-44::obj-26" : [ "counter[46]", "counter", 0 ],
			"obj-38::obj-79" : [ "destination_value[41]", "destination_value", 0 ],
			"obj-113::obj-26" : [ "counter[96]", "counter", 0 ],
			"obj-100::obj-10" : [ "beat[81]", "beat", 0 ],
			"obj-92::obj-10" : [ "beat[77]", "beat", 0 ],
			"obj-91::obj-73" : [ "initial_value[36]", "initial_value", 0 ],
			"obj-85::obj-79" : [ "destination_value[81]", "destination_value", 0 ],
			"obj-81::obj-79" : [ "destination_value[77]", "destination_value", 0 ],
			"obj-74::obj-67" : [ "toggle[71]", "toggle", 0 ],
			"obj-65::obj-55" : [ "counterreset[17]", "counterreset", 0 ],
			"obj-60::obj-55" : [ "counterreset[12]", "counterreset", 0 ],
			"obj-57::obj-26" : [ "counter[59]", "counter", 0 ],
			"obj-53::obj-57" : [ "transportreset[5]", "transportreset", 0 ],
			"obj-48::obj-578" : [ "ramp_time[50]", "ramp_time", 0 ],
			"obj-97::obj-578" : [ "ramp_time[2]", "ramp_time", 0 ],
			"obj-104::obj-79" : [ "destination_value[7]", "destination_value", 0 ],
			"obj-13::obj-73" : [ "initial_value[88]", "initial_value", 0 ],
			"obj-7::obj-17" : [ "custom_value[12]", "custom value", 0 ],
			"obj-24::obj-73" : [ "initial_value[77]", "initial_value", 0 ],
			"obj-18::obj-67" : [ "toggle[22]", "toggle", 0 ],
			"obj-30::obj-578" : [ "ramp_time[33]", "ramp_time", 0 ],
			"obj-46::obj-578" : [ "ramp_time[48]", "ramp_time", 0 ],
			"obj-41::obj-67" : [ "toggle[43]", "toggle", 0 ],
			"obj-115::obj-17" : [ "custom_value[98]", "custom value", 0 ],
			"obj-110::obj-73" : [ "initial_value[43]", "initial_value", 0 ],
			"obj-94::obj-26" : [ "counter[89]", "counter", 0 ],
			"obj-87::obj-26" : [ "counter[83]", "counter", 0 ],
			"obj-83::obj-9" : [ "bar[89]", "bar", 0 ],
			"obj-67::obj-578" : [ "ramp_time[69]", "ramp_time", 0 ],
			"obj-62::obj-73" : [ "initial_value[14]", "initial_value", 0 ],
			"obj-59::obj-578" : [ "ramp_time[61]", "ramp_time", 0 ],
			"obj-55::obj-17" : [ "custom_value[57]", "custom value", 0 ],
			"obj-50::obj-1" : [ "counter_incomingval[2]", "counter_incomingval", 0 ],
			"obj-102::obj-57" : [ "transportreset[94]", "transportreset", 0 ],
			"obj-106::obj-73" : [ "initial_value[90]", "initial_value", 0 ],
			"obj-9::obj-73" : [ "initial_value[84]", "initial_value", 0 ],
			"obj-26::obj-55" : [ "counterreset[79]", "counterreset", 0 ],
			"obj-21::obj-17" : [ "custom_value[25]", "custom value", 0 ],
			"obj-32::obj-79" : [ "destination_value[35]", "destination_value", 0 ],
			"obj-27::obj-57" : [ "transportreset[60]", "transportreset", 0 ],
			"obj-43::obj-17" : [ "custom_value[45]", "custom value", 0 ],
			"obj-38::obj-9" : [ "bar[51]", "bar", 0 ],
			"obj-100::obj-578" : [ "ramp_time[91]", "ramp_time", 0 ],
			"obj-89::obj-57" : [ "transportreset[35]", "transportreset", 0 ],
			"obj-85::obj-9" : [ "bar[91]", "bar", 0 ],
			"obj-80::obj-9" : [ "bar[86]", "bar", 0 ],
			"obj-74::obj-578" : [ "ramp_time[71]", "ramp_time", 0 ],
			"obj-60::obj-73" : [ "initial_value[12]", "initial_value", 0 ],
			"obj-57::obj-79" : [ "destination_value[59]", "destination_value", 0 ],
			"obj-52::obj-1" : [ "counter_incomingval[4]", "counter_incomingval", 0 ],
			"obj-95::obj-578" : [ "ramp_time", "ramp_time", 0 ],
			"obj-104::obj-17" : [ "custom_value[7]", "custom value", 0 ],
			"obj-12::obj-1" : [ "counter_incomingval[87]", "counter_incomingval", 0 ],
			"obj-24::obj-57" : [ "transportreset[77]", "transportreset", 0 ],
			"obj-18::obj-578" : [ "ramp_time[22]", "ramp_time", 0 ],
			"obj-34::obj-55" : [ "counterreset[67]", "counterreset", 0 ],
			"obj-45::obj-17" : [ "custom_value[47]", "custom value", 0 ],
			"obj-41::obj-73" : [ "initial_value[53]", "initial_value", 0 ],
			"obj-110::obj-1" : [ "counter_incomingval[43]", "counter_incomingval", 0 ],
			"obj-87::obj-57" : [ "transportreset[33]", "transportreset", 0 ],
			"obj-82::obj-79" : [ "destination_value[78]", "destination_value", 0 ],
			"obj-76::obj-67" : [ "toggle[73]", "toggle", 0 ],
			"obj-62::obj-578" : [ "ramp_time[64]", "ramp_time", 0 ],
			"obj-59::obj-73" : [ "initial_value[11]", "initial_value", 0 ],
			"obj-54::obj-79" : [ "destination_value[56]", "destination_value", 0 ],
			"obj-50::obj-26" : [ "counter[52]", "counter", 0 ],
			"obj-102::obj-79" : [ "destination_value[5]", "destination_value", 0 ],
			"obj-26::obj-67" : [ "toggle[29]", "toggle", 0 ],
			"obj-20::obj-10" : [ "beat[14]", "beat", 0 ],
			"obj-36::obj-17" : [ "custom_value[39]", "custom value", 0 ],
			"obj-32::obj-17" : [ "custom_value[35]", "custom value", 0 ],
			"obj-47::obj-57" : [ "transportreset[59]", "transportreset", 0 ],
			"obj-43::obj-57" : [ "transportreset[55]", "transportreset", 0 ],
			"obj-37::obj-10" : [ "beat[30]", "beat", 0 ],
			"obj-112::obj-57" : [ "transportreset[45]", "transportreset", 0 ],
			"obj-89::obj-17" : [ "custom_value[85]", "custom value", 0 ],
			"obj-84::obj-1" : [ "counter_incomingval[30]", "counter_incomingval", 0 ],
			"obj-80::obj-55" : [ "counterreset[26]", "counterreset", 0 ],
			"obj-74::obj-79" : [ "destination_value[71]", "destination_value", 0 ],
			"obj-64::obj-55" : [ "counterreset[16]", "counterreset", 0 ],
			"obj-56::obj-26" : [ "counter[58]", "counter", 0 ],
			"obj-52::obj-26" : [ "counter[54]", "counter", 0 ],
			"obj-98::obj-55" : [ "counterreset[96]", "counterreset", 0 ],
			"obj-12::obj-578" : [ "ramp_time[17]", "ramp_time", 0 ],
			"obj-11::obj-1" : [ "counter_incomingval[86]", "counter_incomingval", 0 ],
			"obj-6::obj-9" : [ "bar[21]", "bar", 0 ],
			"obj-17::obj-67" : [ "toggle[21]", "toggle", 0 ],
			"obj-34::obj-67" : [ "toggle[37]", "toggle", 0 ],
			"obj-29::obj-17" : [ "custom_value[32]", "custom value", 0 ],
			"obj-45::obj-10" : [ "beat[37]", "beat", 0 ],
			"obj-40::obj-67" : [ "toggle[42]", "toggle", 0 ],
			"obj-114::obj-26" : [ "counter[97]", "counter", 0 ],
			"obj-110::obj-26" : [ "counter[93]", "counter", 0 ],
			"obj-93::obj-79" : [ "destination_value[88]", "destination_value", 0 ],
			"obj-82::obj-9" : [ "bar[88]", "bar", 0 ],
			"obj-76::obj-73" : [ "initial_value[23]", "initial_value", 0 ],
			"obj-66::obj-26" : [ "counter[68]", "counter", 0 ],
			"obj-62::obj-10" : [ "beat[54]", "beat", 0 ],
			"obj-54::obj-55" : [ "counterreset[6]", "counterreset", 0 ],
			"obj-49::obj-67" : [ "toggle[51]", "toggle", 0 ],
			"obj-102::obj-17" : [ "custom_value[5]", "custom value", 0 ],
			"obj-14::obj-9" : [ "bar[29]", "bar", 0 ],
			"obj-8::obj-73" : [ "initial_value[83]", "initial_value", 0 ],
			"obj-20::obj-79" : [ "destination_value[24]", "destination_value", 0 ],
			"obj-19::obj-26" : [ "counter[23]", "counter", 0 ],
			"obj-36::obj-9" : [ "bar[49]", "bar", 0 ],
			"obj-31::obj-26" : [ "counter[34]", "counter", 0 ],
			"obj-47::obj-79" : [ "destination_value[49]", "destination_value", 0 ],
			"obj-37::obj-67" : [ "toggle[40]", "toggle", 0 ],
			"obj-112::obj-10" : [ "beat[85]", "beat", 0 ],
			"obj-99::obj-57" : [ "transportreset[40]", "transportreset", 0 ],
			"obj-84::obj-79" : [ "destination_value[80]", "destination_value", 0 ],
			"obj-71::obj-55" : [ "counterreset[20]", "counterreset", 0 ],
			"obj-64::obj-73" : [ "initial_value[16]", "initial_value", 0 ],
			"obj-56::obj-17" : [ "custom_value[58]", "custom value", 0 ],
			"obj-98::obj-67" : [ "toggle[3]", "toggle", 0 ],
			"obj-105::obj-9" : [ "bar[16]", "bar", 0 ],
			"obj-12::obj-79" : [ "destination_value[17]", "destination_value", 0 ],
			"obj-10::obj-10" : [ "beat[5]", "beat", 0 ],
			"obj-6::obj-10" : [ "beat[1]", "beat", 0 ],
			"obj-23::obj-73" : [ "initial_value[76]", "initial_value", 0 ],
			"obj-17::obj-73" : [ "initial_value[71]", "initial_value", 0 ],
			"obj-33::obj-1" : [ "counter_incomingval[66]", "counter_incomingval", 0 ],
			"obj-29::obj-9" : [ "bar[42]", "bar", 0 ],
			"obj-28::obj-55" : [ "counterreset[61]", "counterreset", 0 ],
			"obj-40::obj-55" : [ "counterreset[52]", "counterreset", 0 ],
			"obj-114::obj-67" : [ "toggle[97]", "toggle", 0 ],
			"obj-108::obj-10" : [ "beat[82]", "beat", 0 ],
			"obj-93::obj-67" : [ "toggle[88]", "toggle", 0 ],
			"obj-86::obj-17" : [ "custom_value[82]", "custom value", 0 ],
			"obj-75::obj-10" : [ "beat[62]", "beat", 0 ],
			"obj-66::obj-67" : [ "toggle[68]", "toggle", 0 ],
			"obj-61::obj-73" : [ "initial_value[13]", "initial_value", 0 ],
			"obj-58::obj-578" : [ "ramp_time[60]", "ramp_time", 0 ],
			"obj-49::obj-9" : [ "bar[61]", "bar", 0 ],
			"obj-95::obj-1" : [ "counter_incomingval[99]", "counter_incomingval", 0 ],
			"obj-96::obj-55" : [ "counterreset[98]", "counterreset", 0 ],
			"obj-103::obj-10" : [ "bar[13]", "bar", 0 ],
			"obj-14::obj-10" : [ "beat[9]", "beat", 0 ],
			"obj-8::obj-1" : [ "counter_incomingval[83]", "counter_incomingval", 0 ],
			"obj-25::obj-17" : [ "custom_value[28]", "custom value", 0 ],
			"obj-20::obj-67" : [ "toggle[24]", "toggle", 0 ],
			"obj-19::obj-67" : [ "toggle[23]", "toggle", 0 ],
			"obj-35::obj-55" : [ "counterreset[68]", "counterreset", 0 ],
			"obj-31::obj-79" : [ "destination_value[34]", "destination_value", 0 ],
			"obj-47::obj-17" : [ "custom_value[49]", "custom value", 0 ],
			"obj-42::obj-79" : [ "destination_value[44]", "destination_value", 0 ],
			"obj-111::obj-578" : [ "ramp_time[94]", "ramp_time", 0 ],
			"obj-99::obj-73" : [ "initial_value[40]", "initial_value", 0 ],
			"obj-88::obj-9" : [ "bar[94]", "bar", 0 ],
			"obj-84::obj-578" : [ "ramp_time[80]", "ramp_time", 0 ],
			"obj-78::obj-17" : [ "custom_value[75]", "custom value", 0 ],
			"obj-71::obj-73" : [ "initial_value[20]", "initial_value", 0 ],
			"obj-63::obj-57" : [ "transportreset[15]", "transportreset", 0 ],
			"obj-56::obj-67" : [ "toggle[58]", "toggle", 0 ],
			"obj-51::obj-55" : [ "counterreset[3]", "counterreset", 0 ],
			"obj-101::obj-1" : [ "counter_incomingval[95]", "counter_incomingval", 0 ],
			"obj-105::obj-10" : [ "bar[17]", "bar", 0 ],
			"obj-11::obj-79" : [ "destination_value[16]", "destination_value", 0 ],
			"obj-10::obj-26" : [ "counter[15]", "counter", 0 ],
			"obj-5::obj-17" : [ "custom_value[10]", "custom value", 0 ],
			"obj-23::obj-1" : [ "counter_incomingval[76]", "counter_incomingval", 0 ],
			"obj-33::obj-578" : [ "ramp_time[36]", "ramp_time", 0 ],
			"obj-28::obj-67" : [ "toggle[31]", "toggle", 0 ],
			"obj-28::obj-9" : [ "bar[41]", "bar", 0 ],
			"obj-44::obj-10" : [ "beat[36]", "beat", 0 ],
			"obj-40::obj-79" : [ "destination_value[42]", "destination_value", 0 ],
			"obj-113::obj-73" : [ "initial_value[46]", "initial_value", 0 ],
			"obj-108::obj-57" : [ "transportreset[42]", "transportreset", 0 ],
			"obj-92::obj-73" : [ "initial_value[37]", "initial_value", 0 ],
			"obj-91::obj-67" : [ "toggle[86]", "toggle", 0 ],
			"obj-86::obj-67" : [ "toggle[82]", "toggle", 0 ],
			"obj-81::obj-26" : [ "counter[77]", "counter", 0 ],
			"obj-75::obj-26" : [ "counter[72]", "counter", 0 ],
			"obj-65::obj-10" : [ "beat[57]", "beat", 0 ],
			"obj-61::obj-1" : [ "counter_incomingval[13]", "counter_incomingval", 0 ],
			"obj-58::obj-9" : [ "bar[70]", "bar", 0 ],
			"obj-53::obj-79" : [ "destination_value[55]", "destination_value", 0 ],
			"obj-49::obj-17" : [ "custom_value[51]", "custom value", 0 ],
			"obj-96::obj-67" : [ "toggle[1]", "toggle", 0 ],
			"obj-97::obj-73" : [ "initial_value[97]", "initial_value", 0 ],
			"obj-103::obj-26" : [ "counter[6]", "counter", 0 ],
			"obj-13::obj-1" : [ "counter_incomingval[88]", "counter_incomingval", 0 ],
			"obj-7::obj-26" : [ "counter[12]", "counter", 0 ],
			"obj-25::obj-9" : [ "bar[38]", "bar", 0 ],
			"obj-35::obj-67" : [ "toggle[38]", "toggle", 0 ],
			"obj-46::obj-17" : [ "custom_value[48]", "custom value", 0 ],
			"obj-42::obj-9" : [ "bar[54]", "bar", 0 ],
			"obj-116::obj-73" : [ "initial_value[49]", "initial_value", 0 ],
			"obj-111::obj-67" : [ "toggle[94]", "toggle", 0 ],
			"obj-94::obj-10" : [ "beat[79]", "beat", 0 ],
			"obj-88::obj-10" : [ "beat[74]", "beat", 0 ],
			"obj-83::obj-17" : [ "custom_value[79]", "custom value", 0 ],
			"obj-78::obj-57" : [ "transportreset[25]", "transportreset", 0 ],
			"obj-77::obj-1" : [ "counter_incomingval[24]", "counter_incomingval", 0 ],
			"obj-63::obj-67" : [ "toggle[65]", "toggle", 0 ],
			"obj-60::obj-67" : [ "toggle[62]", "toggle", 0 ],
			"obj-55::obj-67" : [ "toggle[57]", "toggle", 0 ],
			"obj-51::obj-1" : [ "counter_incomingval[3]", "counter_incomingval", 0 ],
			"obj-101::obj-578" : [ "ramp_time[4]", "ramp_time", 0 ],
			"obj-106::obj-57" : [ "transportreset[90]", "transportreset", 0 ],
			"obj-11::obj-57" : [ "transportreset[86]", "transportreset", 0 ],
			"obj-5::obj-9" : [ "bar[20]", "bar", 0 ],
			"obj-21::obj-9" : [ "bar[35]", "bar", 0 ],
			"obj-15::obj-9" : [ "bar[30]", "bar", 0 ],
			"obj-27::obj-9" : [ "bar[40]", "bar", 0 ],
			"obj-44::obj-67" : [ "toggle[46]", "toggle", 0 ],
			"obj-38::obj-17" : [ "custom_value[41]", "custom value", 0 ],
			"obj-113::obj-1" : [ "counter_incomingval[46]", "counter_incomingval", 0 ],
			"obj-92::obj-26" : [ "counter[87]", "counter", 0 ],
			"obj-91::obj-10" : [ "beat[76]", "beat", 0 ],
			"obj-85::obj-17" : [ "custom_value[81]", "custom value", 0 ],
			"obj-81::obj-17" : [ "custom_value[77]", "custom value", 0 ],
			"obj-65::obj-67" : [ "toggle[67]", "toggle", 0 ],
			"obj-57::obj-55" : [ "counterreset[9]", "counterreset", 0 ],
			"obj-53::obj-578" : [ "ramp_time[55]", "ramp_time", 0 ],
			"obj-48::obj-67" : [ "toggle[50]", "toggle", 0 ],
			"obj-97::obj-57" : [ "transportreset[97]", "transportreset", 0 ],
			"obj-13::obj-10" : [ "beat[8]", "beat", 0 ],
			"obj-7::obj-55" : [ "counterreset[82]", "counterreset", 0 ],
			"obj-24::obj-9" : [ "bar[37]", "bar", 0 ],
			"obj-18::obj-26" : [ "counter[22]", "counter", 0 ],
			"obj-35::obj-73" : [ "initial_value[68]", "initial_value", 0 ],
			"obj-30::obj-9" : [ "bar[43]", "bar", 0 ],
			"obj-46::obj-9" : [ "bar[58]", "bar", 0 ],
			"obj-41::obj-79" : [ "destination_value[43]", "destination_value", 0 ],
			"obj-115::obj-73" : [ "initial_value[48]", "initial_value", 0 ],
			"obj-94::obj-79" : [ "destination_value[89]", "destination_value", 0 ],
			"obj-87::obj-73" : [ "initial_value[33]", "initial_value", 0 ],
			"obj-83::obj-57" : [ "transportreset[29]", "transportreset", 0 ],
			"obj-77::obj-10" : [ "beat[64]", "beat", 0 ],
			"obj-77::obj-578" : [ "ramp_time[74]", "ramp_time", 0 ],
			"obj-67::obj-73" : [ "initial_value[19]", "initial_value", 0 ],
			"obj-59::obj-9" : [ "bar[71]", "bar", 0 ],
			"obj-55::obj-57" : [ "transportreset[7]", "transportreset", 0 ],
			"obj-50::obj-9" : [ "bar[62]", "bar", 0 ],
			"obj-106::obj-79" : [ "destination_value[9]", "destination_value", 0 ],
			"obj-9::obj-10" : [ "beat[4]", "beat", 0 ],
			"obj-21::obj-73" : [ "initial_value[75]", "initial_value", 0 ],
			"obj-15::obj-10" : [ "beat[10]", "beat", 0 ],
			"obj-32::obj-26" : [ "counter[35]", "counter", 0 ],
			"obj-27::obj-10" : [ "beat[20]", "beat", 0 ],
			"obj-43::obj-73" : [ "initial_value[55]", "initial_value", 0 ],
			"obj-38::obj-57" : [ "transportreset[51]", "transportreset", 0 ],
			"obj-113::obj-67" : [ "toggle[96]", "toggle", 0 ],
			"obj-100::obj-1" : [ "counter_incomingval[41]", "counter_incomingval", 0 ],
			"obj-85::obj-57" : [ "transportreset[31]", "transportreset", 0 ],
			"obj-80::obj-57" : [ "transportreset[26]", "transportreset", 0 ],
			"obj-74::obj-55" : [ "counterreset[21]", "counterreset", 0 ],
			"obj-65::obj-57" : [ "transportreset[17]", "transportreset", 0 ],
			"obj-60::obj-57" : [ "transportreset[12]", "transportreset", 0 ],
			"obj-57::obj-1" : [ "counter_incomingval[9]", "counter_incomingval", 0 ],
			"obj-52::obj-55" : [ "counterreset[4]", "counterreset", 0 ],
			"obj-95::obj-79" : [ "destination_value", "destination_value", 0 ],
			"obj-97::obj-79" : [ "destination_value[2]", "destination_value", 0 ],
			"obj-104::obj-55" : [ "counterreset[92]", "counterreset", 0 ],
			"obj-7::obj-67" : [ "toggle[12]", "toggle", 0 ],
			"obj-24::obj-55" : [ "counterreset[77]", "counterreset", 0 ],
			"obj-18::obj-55" : [ "counterreset[72]", "counterreset", 0 ],
			"obj-34::obj-578" : [ "ramp_time[37]", "ramp_time", 0 ],
			"obj-30::obj-10" : [ "beat[23]", "beat", 0 ],
			"obj-41::obj-9" : [ "bar[53]", "bar", 0 ],
			"obj-115::obj-1" : [ "counter_incomingval[48]", "counter_incomingval", 0 ],
			"obj-110::obj-55" : [ "counterreset[43]", "counterreset", 0 ],
			"obj-94::obj-57" : [ "transportreset[39]", "transportreset", 0 ],
			"obj-87::obj-17" : [ "custom_value[83]", "custom value", 0 ],
			"obj-76::obj-79" : [ "destination_value[73]", "destination_value", 0 ],
			"obj-67::obj-57" : [ "transportreset[19]", "transportreset", 0 ],
			"obj-62::obj-57" : [ "transportreset[14]", "transportreset", 0 ],
			"obj-59::obj-17" : [ "custom_value[61]", "custom value", 0 ],
			"obj-50::obj-79" : [ "destination_value[52]", "destination_value", 0 ],
			"obj-102::obj-26" : [ "counter[5]", "counter", 0 ],
			"obj-106::obj-17" : [ "custom_value[9]", "custom value", 0 ],
			"obj-9::obj-26" : [ "counter[14]", "counter", 0 ],
			"obj-26::obj-57" : [ "transportreset[79]", "transportreset", 0 ],
			"obj-36::obj-55" : [ "counterreset[69]", "counterreset", 0 ],
			"obj-32::obj-55" : [ "counterreset[65]", "counterreset", 0 ],
			"obj-43::obj-1" : [ "counter_incomingval[55]", "counter_incomingval", 0 ],
			"obj-112::obj-1" : [ "counter_incomingval[45]", "counter_incomingval", 0 ],
			"obj-100::obj-17" : [ "custom_value[91]", "custom value", 0 ],
			"obj-89::obj-26" : [ "counter[85]", "counter", 0 ],
			"obj-80::obj-10" : [ "beat[66]", "beat", 0 ],
			"obj-74::obj-1" : [ "counter_incomingval[21]", "counter_incomingval", 0 ],
			"obj-64::obj-9" : [ "bar[76]", "bar", 0 ],
			"obj-52::obj-17" : [ "custom_value[54]", "custom value", 0 ],
			"obj-98::obj-578" : [ "ramp_time[3]", "ramp_time", 0 ],
			"obj-104::obj-67" : [ "toggle[7]", "toggle", 0 ],
			"obj-12::obj-26" : [ "counter[17]", "counter", 0 ],
			"obj-11::obj-9" : [ "bar[26]", "bar", 0 ],
			"obj-6::obj-67" : [ "toggle[11]", "toggle", 0 ],
			"obj-24::obj-26" : [ "counter[27]", "counter", 0 ],
			"obj-17::obj-57" : [ "transportreset[71]", "transportreset", 0 ],
			"obj-34::obj-57" : [ "transportreset[67]", "transportreset", 0 ],
			"obj-29::obj-55" : [ "counterreset[62]", "counterreset", 0 ],
			"obj-45::obj-67" : [ "toggle[47]", "toggle", 0 ],
			"obj-114::obj-578" : [ "ramp_time[97]", "ramp_time", 0 ],
			"obj-110::obj-57" : [ "transportreset[43]", "transportreset", 0 ],
			"obj-93::obj-10" : [ "beat[78]", "beat", 0 ],
			"obj-87::obj-1" : [ "counter_incomingval[33]", "counter_incomingval", 0 ],
			"obj-82::obj-57" : [ "transportreset[28]", "transportreset", 0 ],
			"obj-76::obj-26" : [ "counter[73]", "counter", 0 ],
			"obj-66::obj-9" : [ "bar[78]", "bar", 0 ],
			"obj-62::obj-79" : [ "destination_value[64]", "destination_value", 0 ],
			"obj-59::obj-67" : [ "toggle[61]", "toggle", 0 ],
			"obj-54::obj-10" : [ "beat[46]", "beat", 0 ],
			"obj-102::obj-55" : [ "counterreset[94]", "counterreset", 0 ],
			"obj-14::obj-67" : [ "toggle[19]", "toggle", 0 ],
			"obj-8::obj-79" : [ "destination_value[13]", "destination_value", 0 ],
			"obj-26::obj-79" : [ "destination_value[29]", "destination_value", 0 ],
			"obj-20::obj-55" : [ "counterreset[74]", "counterreset", 0 ],
			"obj-36::obj-67" : [ "toggle[39]", "toggle", 0 ],
			"obj-31::obj-55" : [ "counterreset[64]", "counterreset", 0 ],
			"obj-47::obj-26" : [ "counter[49]", "counter", 0 ],
			"obj-43::obj-578" : [ "ramp_time[45]", "ramp_time", 0 ],
			"obj-37::obj-79" : [ "destination_value[40]", "destination_value", 0 ],
			"obj-112::obj-578" : [ "ramp_time[95]", "ramp_time", 0 ],
			"obj-99::obj-578" : [ "ramp_time[90]", "ramp_time", 0 ],
			"obj-89::obj-55" : [ "counterreset[35]", "counterreset", 0 ],
			"obj-84::obj-9" : [ "bar[90]", "bar", 0 ],
			"obj-80::obj-67" : [ "toggle[76]", "toggle", 0 ],
			"obj-71::obj-67" : [ "toggle[70]", "toggle", 0 ],
			"obj-64::obj-57" : [ "transportreset[16]", "transportreset", 0 ],
			"obj-56::obj-73" : [ "initial_value[8]", "initial_value", 0 ],
			"obj-52::obj-67" : [ "toggle[54]", "toggle", 0 ],
			"obj-98::obj-57" : [ "transportreset[96]", "transportreset", 0 ],
			"obj-105::obj-67" : [ "toggle[8]", "toggle", 0 ],
			"obj-12::obj-17" : [ "custom_value[17]", "custom value", 0 ],
			"obj-10::obj-73" : [ "initial_value[85]", "initial_value", 0 ],
			"obj-6::obj-73" : [ "initial_value[81]", "initial_value", 0 ],
			"obj-23::obj-79" : [ "destination_value[26]", "destination_value", 0 ],
			"obj-17::obj-79" : [ "destination_value[21]", "destination_value", 0 ],
			"obj-29::obj-67" : [ "toggle[32]", "toggle", 0 ],
			"obj-45::obj-1" : [ "counter_incomingval[57]", "counter_incomingval", 0 ],
			"obj-40::obj-9" : [ "bar[52]", "bar", 0 ],
			"obj-114::obj-10" : [ "beat[87]", "beat", 0 ],
			"obj-108::obj-17" : [ "custom_value[92]", "custom value", 0 ],
			"obj-93::obj-57" : [ "transportreset[38]", "transportreset", 0 ],
			"obj-86::obj-10" : [ "beat[72]", "beat", 0 ],
			"obj-82::obj-10" : [ "beat[68]", "beat", 0 ],
			"obj-66::obj-79" : [ "destination_value[68]", "destination_value", 0 ],
			"obj-61::obj-9" : [ "bar[73]", "bar", 0 ],
			"obj-58::obj-17" : [ "custom_value[60]", "custom value", 0 ],
			"obj-54::obj-67" : [ "toggle[56]", "toggle", 0 ],
			"obj-49::obj-55" : [ "counterreset[1]", "counterreset", 0 ],
			"obj-95::obj-10" : [ "bar[1]", "bar", 0 ],
			"obj-96::obj-578" : [ "ramp_time[1]", "ramp_time", 0 ],
			"obj-103::obj-73" : [ "initial_value[93]", "initial_value", 0 ],
			"obj-14::obj-73" : [ "initial_value[89]", "initial_value", 0 ],
			"obj-8::obj-17" : [ "custom_value[13]", "custom value", 0 ],
			"obj-25::obj-55" : [ "counterreset[78]", "counterreset", 0 ],
			"obj-20::obj-9" : [ "bar[34]", "bar", 0 ],
			"obj-19::obj-578" : [ "ramp_time[23]", "ramp_time", 0 ],
			"obj-31::obj-57" : [ "transportreset[64]", "transportreset", 0 ],
			"obj-47::obj-55" : [ "counterreset[59]", "counterreset", 0 ],
			"obj-42::obj-17" : [ "custom_value[44]", "custom value", 0 ],
			"obj-37::obj-9" : [ "bar[50]", "bar", 0 ],
			"obj-99::obj-17" : [ "custom_value[90]", "custom value", 0 ],
			"obj-88::obj-26" : [ "counter[84]", "counter", 0 ],
			"obj-84::obj-73" : [ "initial_value[30]", "initial_value", 0 ],
			"obj-78::obj-73" : [ "initial_value[25]", "initial_value", 0 ],
			"obj-71::obj-1" : [ "counter_incomingval[20]", "counter_incomingval", 0 ],
			"obj-56::obj-79" : [ "destination_value[58]", "destination_value", 0 ],
			"obj-51::obj-79" : [ "destination_value[53]", "destination_value", 0 ],
			"obj-105::obj-73" : [ "initial_value[91]", "initial_value", 0 ],
			"obj-11::obj-10" : [ "beat[6]", "beat", 0 ],
			"obj-10::obj-1" : [ "counter_incomingval[85]", "counter_incomingval", 0 ],
			"obj-23::obj-17" : [ "custom_value[26]", "custom value", 0 ],
			"obj-17::obj-17" : [ "custom_value[21]", "custom value", 0 ],
			"obj-33::obj-9" : [ "bar[46]", "bar", 0 ],
			"obj-28::obj-57" : [ "transportreset[61]", "transportreset", 0 ],
			"obj-44::obj-578" : [ "ramp_time[46]", "ramp_time", 0 ],
			"obj-40::obj-1" : [ "counter_incomingval[52]", "counter_incomingval", 0 ],
			"obj-108::obj-55" : [ "counterreset[42]", "counterreset", 0 ],
			"obj-91::obj-55" : [ "counterreset[36]", "counterreset", 0 ],
			"obj-86::obj-57" : [ "transportreset[32]", "transportreset", 0 ],
			"obj-81::obj-67" : [ "toggle[77]", "toggle", 0 ],
			"obj-75::obj-67" : [ "toggle[72]", "toggle", 0 ],
			"obj-61::obj-26" : [ "counter[63]", "counter", 0 ],
			"obj-58::obj-57" : [ "transportreset[10]", "transportreset", 0 ],
			"obj-53::obj-10" : [ "beat[45]", "beat", 0 ],
			"obj-49::obj-57" : [ "transportreset[1]", "transportreset", 0 ],
			"obj-96::obj-57" : [ "transportreset[98]", "transportreset", 0 ],
			"obj-103::obj-1" : [ "counter_incomingval[93]", "counter_incomingval", 0 ],
			"obj-25::obj-67" : [ "toggle[28]", "toggle", 0 ],
			"obj-19::obj-55" : [ "counterreset[73]", "counterreset", 0 ],
			"obj-35::obj-57" : [ "transportreset[68]", "transportreset", 0 ],
			"obj-31::obj-73" : [ "initial_value[64]", "initial_value", 0 ],
			"obj-46::obj-55" : [ "counterreset[58]", "counterreset", 0 ],
			"obj-42::obj-57" : [ "transportreset[54]", "transportreset", 0 ],
			"obj-116::obj-57" : [ "transportreset[49]", "transportreset", 0 ],
			"obj-116::obj-9" : [ "bar[109]", "bar", 0 ],
			"obj-111::obj-9" : [ "bar[104]", "bar", 0 ],
			"obj-88::obj-17" : [ "custom_value[84]", "custom value", 0 ],
			"obj-83::obj-73" : [ "initial_value[29]", "initial_value", 0 ],
			"obj-78::obj-1" : [ "counter_incomingval[25]", "counter_incomingval", 0 ],
			"obj-77::obj-55" : [ "counterreset[24]", "counterreset", 0 ],
			"obj-71::obj-17" : [ "custom_value[70]", "custom value", 0 ],
			"obj-63::obj-73" : [ "initial_value[15]", "initial_value", 0 ],
			"obj-55::obj-79" : [ "destination_value[57]", "destination_value", 0 ],
			"obj-51::obj-17" : [ "custom_value[53]", "custom value", 0 ],
			"obj-101::obj-9" : [ "bar[8]", "bar", 0 ],
			"obj-11::obj-67" : [ "toggle[16]", "toggle", 0 ],
			"obj-10::obj-578" : [ "ramp_time[15]", "ramp_time", 0 ],
			"obj-5::obj-67" : [ "toggle[10]", "toggle", 0 ],
			"obj-15::obj-67" : [ "toggle[20]", "toggle", 0 ],
			"obj-33::obj-10" : [ "beat[26]", "beat", 0 ],
			"obj-28::obj-73" : [ "initial_value[61]", "initial_value", 0 ],
			"obj-44::obj-79" : [ "destination_value[46]", "destination_value", 0 ],
			"obj-38::obj-73" : [ "initial_value[51]", "initial_value", 0 ],
			"obj-113::obj-55" : [ "counterreset[46]", "counterreset", 0 ],
			"obj-108::obj-9" : [ "bar[102]", "bar", 0 ],
			"obj-92::obj-1" : [ "counter_incomingval[37]", "counter_incomingval", 0 ],
			"obj-91::obj-9" : [ "bar[96]", "bar", 0 ],
			"obj-81::obj-73" : [ "initial_value[27]", "initial_value", 0 ],
			"obj-75::obj-578" : [ "ramp_time[72]", "ramp_time", 0 ],
			"obj-65::obj-79" : [ "destination_value[67]", "destination_value", 0 ],
			"obj-61::obj-67" : [ "toggle[63]", "toggle", 0 ],
			"obj-53::obj-55" : [ "counterreset[5]", "counterreset", 0 ],
			"obj-48::obj-9" : [ "bar[60]", "bar", 0 ],
			"obj-97::obj-17" : [ "custom_value[2]", "custom value", 0 ],
			"obj-103::obj-578" : [ "ramp_time[6]", "ramp_time", 0 ],
			"obj-13::obj-79" : [ "destination_value[18]", "destination_value", 0 ],
			"obj-7::obj-578" : [ "ramp_time[12]", "ramp_time", 0 ],
			"obj-5::obj-10" : [ "beat", "beat", 0 ],
			"obj-18::obj-57" : [ "transportreset[72]", "transportreset", 0 ],
			"obj-35::obj-79" : [ "destination_value[38]", "destination_value", 0 ],
			"obj-30::obj-67" : [ "toggle[33]", "toggle", 0 ],
			"obj-46::obj-67" : [ "toggle[48]", "toggle", 0 ],
			"obj-116::obj-55" : [ "counterreset[49]", "counterreset", 0 ],
			"obj-115::obj-9" : [ "bar[108]", "bar", 0 ],
			"obj-111::obj-17" : [ "custom_value[94]", "custom value", 0 ],
			"obj-94::obj-17" : [ "custom_value[89]", "custom value", 0 ],
			"obj-83::obj-1" : [ "counter_incomingval[29]", "counter_incomingval", 0 ],
			"obj-77::obj-26" : [ "counter[74]", "counter", 0 ],
			"obj-67::obj-10" : [ "beat[59]", "beat", 0 ],
			"obj-63::obj-17" : [ "custom_value[65]", "custom value", 0 ],
			"obj-55::obj-578" : [ "ramp_time[57]", "ramp_time", 0 ],
			"obj-101::obj-10" : [ "bar[9]", "bar", 0 ],
			"obj-106::obj-26" : [ "counter[9]", "counter", 0 ],
			"obj-9::obj-79" : [ "destination_value[14]", "destination_value", 0 ],
			"obj-5::obj-73" : [ "initial_value[80]", "initial_value", 0 ],
			"obj-21::obj-79" : [ "destination_value[25]", "destination_value", 0 ],
			"obj-15::obj-73" : [ "initial_value[70]", "initial_value", 0 ],
			"obj-32::obj-1" : [ "counter_incomingval[65]", "counter_incomingval", 0 ],
			"obj-27::obj-73" : [ "initial_value[60]", "initial_value", 0 ],
			"obj-38::obj-1" : [ "counter_incomingval[51]", "counter_incomingval", 0 ],
			"obj-113::obj-9" : [ "bar[106]", "bar", 0 ],
			"obj-100::obj-67" : [ "toggle[91]", "toggle", 0 ],
			"obj-92::obj-79" : [ "destination_value[87]", "destination_value", 0 ],
			"obj-91::obj-79" : [ "destination_value[86]", "destination_value", 0 ],
			"obj-85::obj-55" : [ "counterreset[31]", "counterreset", 0 ],
			"obj-74::obj-26" : [ "counter[71]", "counter", 0 ],
			"obj-65::obj-578" : [ "ramp_time[67]", "ramp_time", 0 ],
			"obj-60::obj-79" : [ "destination_value[62]", "destination_value", 0 ],
			"obj-57::obj-9" : [ "bar[69]", "bar", 0 ],
			"obj-48::obj-17" : [ "custom_value[50]", "custom value", 0 ],
			"obj-97::obj-26" : [ "counter[2]", "counter", 0 ],
			"obj-104::obj-578" : [ "ramp_time[7]", "ramp_time", 0 ],
			"obj-13::obj-26" : [ "counter[18]", "counter", 0 ],
			"obj-7::obj-57" : [ "transportreset[82]", "transportreset", 0 ],
			"obj-24::obj-10" : [ "beat[17]", "beat", 0 ],
			"obj-18::obj-73" : [ "initial_value[72]", "initial_value", 0 ],
			"obj-34::obj-9" : [ "bar[47]", "bar", 0 ],
			"obj-30::obj-73" : [ "initial_value[63]", "initial_value", 0 ],
			"obj-46::obj-73" : [ "initial_value[58]", "initial_value", 0 ],
			"obj-41::obj-57" : [ "transportreset[53]", "transportreset", 0 ],
			"obj-115::obj-55" : [ "counterreset[48]", "counterreset", 0 ],
			"obj-110::obj-17" : [ "custom_value[93]", "custom value", 0 ],
			"obj-94::obj-9" : [ "bar[99]", "bar", 0 ],
			"obj-87::obj-578" : [ "ramp_time[83]", "ramp_time", 0 ],
			"obj-83::obj-578" : [ "ramp_time[79]", "ramp_time", 0 ],
			"obj-76::obj-55" : [ "counterreset[23]", "counterreset", 0 ],
			"obj-67::obj-26" : [ "counter[69]", "counter", 0 ],
			"obj-62::obj-1" : [ "counter_incomingval[14]", "counter_incomingval", 0 ],
			"obj-59::obj-55" : [ "counterreset[11]", "counterreset", 0 ],
			"obj-55::obj-26" : [ "counter[57]", "counter", 0 ],
			"obj-50::obj-57" : [ "transportreset[2]", "transportreset", 0 ],
			"obj-48::obj-55" : [ "counterreset", "counterreset", 0 ],
			"obj-102::obj-1" : [ "counter_incomingval[94]", "counter_incomingval", 0 ],
			"obj-106::obj-55" : [ "counterreset[90]", "counterreset", 0 ],
			"obj-9::obj-55" : [ "counterreset[84]", "counterreset", 0 ],
			"obj-26::obj-10" : [ "beat[19]", "beat", 0 ],
			"obj-21::obj-10" : [ "beat[15]", "beat", 0 ],
			"obj-32::obj-578" : [ "ramp_time[35]", "ramp_time", 0 ],
			"obj-27::obj-1" : [ "counter_incomingval[60]", "counter_incomingval", 0 ],
			"obj-43::obj-55" : [ "counterreset[55]", "counterreset", 0 ],
			"obj-38::obj-578" : [ "ramp_time[41]", "ramp_time", 0 ],
			"obj-112::obj-55" : [ "counterreset[45]", "counterreset", 0 ],
			"obj-100::obj-26" : [ "counter[91]", "counter", 0 ],
			"obj-89::obj-9" : [ "bar[95]", "bar", 0 ],
			"obj-85::obj-578" : [ "ramp_time[81]", "ramp_time", 0 ],
			"obj-80::obj-578" : [ "ramp_time[76]", "ramp_time", 0 ],
			"obj-74::obj-9" : [ "bar[81]", "bar", 0 ],
			"obj-64::obj-10" : [ "beat[56]", "beat", 0 ],
			"obj-57::obj-17" : [ "custom_value[59]", "custom value", 0 ],
			"obj-52::obj-57" : [ "transportreset[4]", "transportreset", 0 ],
			"obj-98::obj-9" : [ "bar[6]", "bar", 0 ],
			"obj-104::obj-57" : [ "transportreset[92]", "transportreset", 0 ],
			"obj-12::obj-67" : [ "toggle[17]", "toggle", 0 ],
			"obj-6::obj-57" : [ "transportreset[81]", "transportreset", 0 ],
			"obj-24::obj-67" : [ "toggle[27]", "toggle", 0 ],
			"obj-34::obj-10" : [ "beat[27]", "beat", 0 ],
			"obj-45::obj-9" : [ "bar[57]", "bar", 0 ],
			"obj-41::obj-10" : [ "beat[33]", "beat", 0 ],
			"obj-110::obj-10" : [ "beat[83]", "beat", 0 ],
			"obj-93::obj-578" : [ "ramp_time[88]", "ramp_time", 0 ],
			"obj-87::obj-79" : [ "destination_value[83]", "destination_value", 0 ],
			"obj-82::obj-1" : [ "counter_incomingval[28]", "counter_incomingval", 0 ],
			"obj-76::obj-57" : [ "transportreset[23]", "transportreset", 0 ],
			"obj-62::obj-17" : [ "custom_value[64]", "custom value", 0 ],
			"obj-59::obj-1" : [ "counter_incomingval[11]", "counter_incomingval", 0 ],
			"obj-54::obj-17" : [ "custom_value[56]", "custom value", 0 ],
			"obj-50::obj-578" : [ "ramp_time[52]", "ramp_time", 0 ],
			"obj-48::obj-57" : [ "transportreset", "transportreset", 0 ],
			"obj-102::obj-578" : [ "ramp_time[5]", "ramp_time", 0 ],
			"obj-14::obj-57" : [ "transportreset[89]", "transportreset", 0 ],
			"obj-26::obj-26" : [ "counter[29]", "counter", 0 ],
			"obj-20::obj-578" : [ "ramp_time[24]", "ramp_time", 0 ],
			"obj-36::obj-57" : [ "transportreset[69]", "transportreset", 0 ],
			"obj-47::obj-1" : [ "counter_incomingval[59]", "counter_incomingval", 0 ],
			"obj-43::obj-26" : [ "counter[45]", "counter", 0 ],
			"obj-37::obj-17" : [ "custom_value[40]", "custom value", 0 ],
			"obj-112::obj-26" : [ "counter[95]", "counter", 0 ],
			"obj-89::obj-79" : [ "destination_value[85]", "destination_value", 0 ],
			"obj-84::obj-57" : [ "transportreset[30]", "transportreset", 0 ],
			"obj-80::obj-79" : [ "destination_value[76]", "destination_value", 0 ],
			"obj-64::obj-67" : [ "toggle[66]", "toggle", 0 ],
			"obj-56::obj-9" : [ "bar[68]", "bar", 0 ],
			"obj-52::obj-10" : [ "beat[44]", "beat", 0 ],
			"obj-98::obj-10" : [ "bar[7]", "bar", 0 ],
			"obj-12::obj-73" : [ "initial_value[87]", "initial_value", 0 ],
			"obj-6::obj-79" : [ "destination_value[11]", "destination_value", 0 ],
			"obj-23::obj-26" : [ "counter[26]", "counter", 0 ],
			"obj-17::obj-26" : [ "counter[21]", "counter", 0 ],
			"obj-34::obj-26" : [ "counter[37]", "counter", 0 ],
			"obj-29::obj-57" : [ "transportreset[62]", "transportreset", 0 ],
			"obj-45::obj-55" : [ "counterreset[57]", "counterreset", 0 ],
			"obj-40::obj-26" : [ "counter[42]", "counter", 0 ],
			"obj-114::obj-17" : [ "custom_value[97]", "custom value", 0 ],
			"obj-93::obj-17" : [ "custom_value[88]", "custom value", 0 ],
			"obj-86::obj-578" : [ "ramp_time[82]", "ramp_time", 0 ],
			"obj-82::obj-578" : [ "ramp_time[78]", "ramp_time", 0 ],
			"obj-76::obj-17" : [ "custom_value[73]", "custom value", 0 ],
			"obj-66::obj-10" : [ "beat[58]", "beat", 0 ],
			"obj-58::obj-73" : [ "initial_value[10]", "initial_value", 0 ],
			"obj-54::obj-578" : [ "ramp_time[56]", "ramp_time", 0 ],
			"obj-49::obj-73" : [ "initial_value[1]", "initial_value", 0 ],
			"obj-95::obj-73" : [ "initial_value[99]", "initial_value", 0 ],
			"obj-96::obj-9" : [ "bar[2]", "bar", 0 ],
			"obj-14::obj-79" : [ "destination_value[19]", "destination_value", 0 ],
			"obj-8::obj-55" : [ "counterreset[83]", "counterreset", 0 ],
			"obj-20::obj-57" : [ "transportreset[74]", "transportreset", 0 ],
			"obj-19::obj-1" : [ "counter_incomingval[73]", "counter_incomingval", 0 ],
			"obj-36::obj-79" : [ "destination_value[39]", "destination_value", 0 ],
			"obj-31::obj-67" : [ "toggle[34]", "toggle", 0 ],
			"obj-47::obj-578" : [ "ramp_time[49]", "ramp_time", 0 ],
			"obj-42::obj-73" : [ "initial_value[54]", "initial_value", 0 ],
			"obj-37::obj-57" : [ "transportreset[50]", "transportreset", 0 ],
			"obj-112::obj-17" : [ "custom_value[95]", "custom value", 0 ],
			"obj-99::obj-26" : [ "counter[90]", "counter", 0 ],
			"obj-84::obj-10" : [ "beat[70]", "beat", 0 ],
			"obj-78::obj-9" : [ "bar[85]", "bar", 0 ],
			"obj-71::obj-57" : [ "transportreset[20]", "transportreset", 0 ],
			"obj-64::obj-1" : [ "counter_incomingval[16]", "counter_incomingval", 0 ],
			"obj-56::obj-55" : [ "counterreset[8]", "counterreset", 0 ],
			"obj-51::obj-57" : [ "transportreset[3]", "transportreset", 0 ],
			"obj-123" : [ "follow", "follow", 0 ],
			"obj-98::obj-26" : [ "counter[3]", "counter", 0 ],
			"obj-105::obj-79" : [ "destination_value[8]", "destination_value", 0 ],
			"obj-10::obj-17" : [ "custom_value[15]", "custom value", 0 ],
			"obj-6::obj-17" : [ "custom_value[11]", "custom value", 0 ],
			"obj-23::obj-55" : [ "counterreset[76]", "counterreset", 0 ],
			"obj-17::obj-55" : [ "counterreset[71]", "counterreset", 0 ],
			"obj-33::obj-67" : [ "toggle[36]", "toggle", 0 ],
			"obj-29::obj-79" : [ "destination_value[32]", "destination_value", 0 ],
			"obj-28::obj-10" : [ "beat[21]", "beat", 0 ],
			"obj-40::obj-10" : [ "beat[32]", "beat", 0 ],
			"obj-114::obj-1" : [ "counter_incomingval[47]", "counter_incomingval", 0 ],
			"obj-108::obj-67" : [ "toggle[92]", "toggle", 0 ],
			"obj-93::obj-9" : [ "bar[98]", "bar", 0 ],
			"obj-86::obj-79" : [ "destination_value[82]", "destination_value", 0 ],
			"obj-75::obj-17" : [ "custom_value[72]", "custom value", 0 ],
			"obj-66::obj-73" : [ "initial_value[18]", "initial_value", 0 ],
			"obj-61::obj-55" : [ "counterreset[13]", "counterreset", 0 ],
			"obj-58::obj-79" : [ "destination_value[60]", "destination_value", 0 ],
			"obj-49::obj-79" : [ "destination_value[51]", "destination_value", 0 ],
			"obj-96::obj-10" : [ "bar[3]", "bar", 0 ],
			"obj-103::obj-17" : [ "custom_value[6]", "custom value", 0 ],
			"obj-14::obj-17" : [ "custom_value[19]", "custom value", 0 ],
			"obj-8::obj-67" : [ "toggle[13]", "toggle", 0 ],
			"obj-25::obj-1" : [ "counter_incomingval[78]", "counter_incomingval", 0 ],
			"obj-19::obj-10" : [ "beat[13]", "beat", 0 ],
			"obj-35::obj-10" : [ "beat[28]", "beat", 0 ],
			"obj-31::obj-578" : [ "ramp_time[34]", "ramp_time", 0 ],
			"obj-42::obj-1" : [ "counter_incomingval[54]", "counter_incomingval", 0 ],
			"obj-116::obj-1" : [ "counter_incomingval[49]", "counter_incomingval", 0 ],
			"obj-111::obj-73" : [ "initial_value[44]", "initial_value", 0 ],
			"obj-99::obj-67" : [ "toggle[90]", "toggle", 0 ],
			"obj-88::obj-73" : [ "initial_value[34]", "initial_value", 0 ],
			"obj-78::obj-55" : [ "counterreset[25]", "counterreset", 0 ],
			"obj-71::obj-79" : [ "destination_value[70]", "destination_value", 0 ],
			"obj-63::obj-26" : [ "counter[65]", "counter", 0 ],
			"obj-51::obj-10" : [ "beat[43]", "beat", 0 ],
			"obj-101::obj-67" : [ "toggle[4]", "toggle", 0 ],
			"obj-105::obj-17" : [ "custom_value[8]", "custom value", 0 ],
			"obj-11::obj-73" : [ "initial_value[86]", "initial_value", 0 ],
			"obj-10::obj-9" : [ "bar[25]", "bar", 0 ],
			"obj-5::obj-57" : [ "transportreset[80]", "transportreset", 0 ],
			"obj-23::obj-67" : [ "toggle[26]", "toggle", 0 ],
			"obj-15::obj-57" : [ "transportreset[70]", "transportreset", 0 ],
			"obj-33::obj-73" : [ "initial_value[66]", "initial_value", 0 ],
			"obj-28::obj-79" : [ "destination_value[31]", "destination_value", 0 ],
			"obj-28::obj-26" : [ "counter[31]", "counter", 0 ],
			"obj-44::obj-17" : [ "custom_value[46]", "custom value", 0 ],
			"obj-113::obj-10" : [ "beat[86]", "beat", 0 ],
			"obj-108::obj-26" : [ "counter[92]", "counter", 0 ],
			"obj-92::obj-578" : [ "ramp_time[87]", "ramp_time", 0 ],
			"obj-91::obj-26" : [ "counter[86]", "counter", 0 ],
			"obj-86::obj-9" : [ "bar[92]", "bar", 0 ],
			"obj-81::obj-9" : [ "bar[87]", "bar", 0 ],
			"obj-75::obj-55" : [ "counterreset[22]", "counterreset", 0 ],
			"obj-65::obj-17" : [ "custom_value[67]", "custom value", 0 ],
			"obj-61::obj-57" : [ "transportreset[13]", "transportreset", 0 ],
			"obj-58::obj-67" : [ "toggle[60]", "toggle", 0 ],
			"obj-53::obj-26" : [ "counter[55]", "counter", 0 ],
			"obj-96::obj-26" : [ "counter[1]", "counter", 0 ],
			"obj-97::obj-55" : [ "counterreset[97]", "counterreset", 0 ],
			"obj-103::obj-9" : [ "bar[12]", "bar", 0 ],
			"obj-13::obj-57" : [ "transportreset[88]", "transportreset", 0 ],
			"obj-7::obj-9" : [ "bar[22]", "bar", 0 ],
			"obj-25::obj-79" : [ "destination_value[28]", "destination_value", 0 ],
			"obj-35::obj-26" : [ "counter[38]", "counter", 0 ],
			"obj-30::obj-57" : [ "transportreset[63]", "transportreset", 0 ],
			"obj-46::obj-57" : [ "transportreset[58]", "transportreset", 0 ],
			"obj-42::obj-578" : [ "ramp_time[44]", "ramp_time", 0 ],
			"obj-116::obj-10" : [ "beat[89]", "beat", 0 ],
			"obj-115::obj-57" : [ "transportreset[48]", "transportreset", 0 ],
			"obj-111::obj-1" : [ "counter_incomingval[44]", "counter_incomingval", 0 ],
			"obj-94::obj-67" : [ "toggle[89]", "toggle", 0 ],
			"obj-88::obj-79" : [ "destination_value[84]", "destination_value", 0 ],
			"obj-83::obj-55" : [ "counterreset[29]", "counterreset", 0 ],
			"obj-78::obj-26" : [ "counter[75]", "counter", 0 ],
			"obj-77::obj-67" : [ "toggle[74]", "toggle", 0 ],
			"obj-67::obj-17" : [ "custom_value[69]", "custom value", 0 ],
			"obj-63::obj-9" : [ "bar[75]", "bar", 0 ],
			"obj-60::obj-17" : [ "custom_value[62]", "custom value", 0 ],
			"obj-55::obj-55" : [ "counterreset[7]", "counterreset", 0 ],
			"obj-51::obj-26" : [ "counter[53]", "counter", 0 ],
			"obj-101::obj-73" : [ "initial_value[95]", "initial_value", 0 ],
			"obj-106::obj-1" : [ "counter_incomingval[90]", "counter_incomingval", 0 ],
			"obj-9::obj-1" : [ "counter_incomingval[84]", "counter_incomingval", 0 ],
			"obj-5::obj-79" : [ "destination_value[10]", "destination_value", 0 ],
			"obj-21::obj-67" : [ "toggle[25]", "toggle", 0 ],
			"obj-15::obj-79" : [ "destination_value[20]", "destination_value", 0 ],
			"obj-27::obj-79" : [ "destination_value[30]", "destination_value", 0 ],
			"obj-44::obj-57" : [ "transportreset[56]", "transportreset", 0 ],
			"obj-38::obj-55" : [ "counterreset[51]", "counterreset", 0 ],
			"obj-113::obj-57" : [ "transportreset[46]", "transportreset", 0 ],
			"obj-100::obj-55" : [ "counterreset[41]", "counterreset", 0 ],
			"obj-92::obj-17" : [ "custom_value[87]", "custom value", 0 ],
			"obj-91::obj-17" : [ "custom_value[86]", "custom value", 0 ],
			"obj-85::obj-73" : [ "initial_value[31]", "initial_value", 0 ],
			"obj-81::obj-55" : [ "counterreset[27]", "counterreset", 0 ],
			"obj-65::obj-26" : [ "counter[67]", "counter", 0 ],
			"obj-60::obj-578" : [ "ramp_time[62]", "ramp_time", 0 ],
			"obj-57::obj-67" : [ "toggle[59]", "toggle", 0 ],
			"obj-53::obj-73" : [ "initial_value[5]", "initial_value", 0 ],
			"obj-48::obj-26" : [ "counter[50]", "counter", 0 ],
			"obj-97::obj-1" : [ "counter_incomingval[97]", "counter_incomingval", 0 ],
			"obj-104::obj-9" : [ "bar[14]", "bar", 0 ],
			"obj-13::obj-17" : [ "custom_value[18]", "custom value", 0 ],
			"obj-7::obj-10" : [ "beat[2]", "beat", 0 ],
			"obj-24::obj-578" : [ "ramp_time[27]", "ramp_time", 0 ],
			"obj-18::obj-9" : [ "bar[32]", "bar", 0 ],
			"obj-30::obj-79" : [ "destination_value[33]", "destination_value", 0 ],
			"obj-46::obj-79" : [ "destination_value[48]", "destination_value", 0 ],
			"obj-41::obj-1" : [ "counter_incomingval[53]", "counter_incomingval", 0 ],
			"obj-115::obj-10" : [ "beat[88]", "beat", 0 ],
			"obj-94::obj-1" : [ "counter_incomingval[39]", "counter_incomingval", 0 ],
			"obj-87::obj-55" : [ "counterreset[33]", "counterreset", 0 ],
			"obj-83::obj-26" : [ "counter[79]", "counter", 0 ],
			"obj-77::obj-17" : [ "custom_value[74]", "custom value", 0 ],
			"obj-67::obj-55" : [ "counterreset[19]", "counterreset", 0 ],
			"obj-59::obj-57" : [ "transportreset[11]", "transportreset", 0 ],
			"obj-55::obj-10" : [ "beat[47]", "beat", 0 ],
			"obj-50::obj-17" : [ "custom_value[52]", "custom value", 0 ],
			"obj-48::obj-1" : [ "counter_incomingval", "counter_incomingval", 0 ],
			"obj-106::obj-578" : [ "ramp_time[9]", "ramp_time", 0 ],
			"obj-9::obj-17" : [ "custom_value[14]", "custom value", 0 ],
			"obj-26::obj-73" : [ "initial_value[79]", "initial_value", 0 ],
			"obj-21::obj-55" : [ "counterreset[75]", "counterreset", 0 ],
			"obj-15::obj-17" : [ "custom_value[20]", "custom value", 0 ],
			"obj-32::obj-9" : [ "bar[45]", "bar", 0 ],
			"obj-27::obj-17" : [ "custom_value[30]", "custom value", 0 ],
			"obj-43::obj-10" : [ "beat[35]", "beat", 0 ],
			"obj-38::obj-26" : [ "counter[41]", "counter", 0 ],
			"obj-100::obj-57" : [ "transportreset[41]", "transportreset", 0 ],
			"obj-89::obj-1" : [ "counter_incomingval[35]", "counter_incomingval", 0 ],
			"obj-85::obj-26" : [ "counter[81]", "counter", 0 ],
			"obj-80::obj-26" : [ "counter[76]", "counter", 0 ],
			"obj-74::obj-73" : [ "initial_value[21]", "initial_value", 0 ],
			"obj-60::obj-26" : [ "counter[62]", "counter", 0 ],
			"obj-57::obj-10" : [ "beat[49]", "beat", 0 ],
			"obj-52::obj-578" : [ "ramp_time[54]", "ramp_time", 0 ],
			"obj-95::obj-67" : [ "toggle", "toggle", 0 ],
			"obj-104::obj-10" : [ "bar[15]", "bar", 0 ],
			"obj-24::obj-79" : [ "destination_value[27]", "destination_value", 0 ],
			"obj-18::obj-79" : [ "destination_value[22]", "destination_value", 0 ],
			"obj-34::obj-73" : [ "initial_value[67]", "initial_value", 0 ],
			"obj-30::obj-17" : [ "custom_value[33]", "custom value", 0 ],
			"obj-45::obj-26" : [ "counter[47]", "counter", 0 ],
			"obj-41::obj-578" : [ "ramp_time[43]", "ramp_time", 0 ],
			"obj-115::obj-67" : [ "toggle[98]", "toggle", 0 ],
			"obj-110::obj-79" : [ "destination_value[93]", "destination_value", 0 ],
			"obj-87::obj-10" : [ "beat[73]", "beat", 0 ],
			"obj-82::obj-55" : [ "counterreset[28]", "counterreset", 0 ],
			"obj-76::obj-1" : [ "counter_incomingval[23]", "counter_incomingval", 0 ],
			"obj-67::obj-9" : [ "bar[79]", "bar", 0 ],
			"obj-62::obj-9" : [ "bar[74]", "bar", 0 ],
			"obj-59::obj-79" : [ "destination_value[61]", "destination_value", 0 ],
			"obj-54::obj-9" : [ "bar[66]", "bar", 0 ],
			"obj-50::obj-67" : [ "toggle[52]", "toggle", 0 ],
			"obj-48::obj-73" : [ "initial_value", "initial_value", 0 ],
			"obj-95::obj-26" : [ "counter", "counter", 0 ],
			"obj-102::obj-9" : [ "bar[10]", "bar", 0 ],
			"obj-9::obj-57" : [ "transportreset[84]", "transportreset", 0 ],
			"obj-26::obj-1" : [ "counter_incomingval[79]", "counter_incomingval", 0 ],
			"obj-36::obj-10" : [ "beat[29]", "beat", 0 ],
			"obj-32::obj-10" : [ "beat[25]", "beat", 0 ],
			"obj-43::obj-67" : [ "toggle[45]", "toggle", 0 ],
			"obj-37::obj-73" : [ "initial_value[50]", "initial_value", 0 ],
			"obj-112::obj-67" : [ "toggle[95]", "toggle", 0 ],
			"obj-100::obj-73" : [ "initial_value[41]", "initial_value", 0 ],
			"obj-89::obj-10" : [ "beat[75]", "beat", 0 ],
			"obj-80::obj-17" : [ "custom_value[76]", "custom value", 0 ],
			"obj-74::obj-17" : [ "custom_value[71]", "custom value", 0 ],
			"obj-64::obj-17" : [ "custom_value[66]", "custom value", 0 ],
			"obj-52::obj-73" : [ "initial_value[4]", "initial_value", 0 ],
			"obj-98::obj-73" : [ "initial_value[96]", "initial_value", 0 ],
			"obj-104::obj-26" : [ "counter[7]", "counter", 0 ],
			"obj-12::obj-9" : [ "bar[27]", "bar", 0 ],
			"obj-11::obj-578" : [ "ramp_time[16]", "ramp_time", 0 ],
			"obj-6::obj-26" : [ "counter[11]", "counter", 0 ],
			"obj-17::obj-1" : [ "counter_incomingval[71]", "counter_incomingval", 0 ],
			"obj-34::obj-1" : [ "counter_incomingval[67]", "counter_incomingval", 0 ],
			"obj-29::obj-10" : [ "beat[22]", "beat", 0 ],
			"obj-45::obj-73" : [ "initial_value[57]", "initial_value", 0 ],
			"obj-114::obj-9" : [ "bar[107]", "bar", 0 ],
			"obj-110::obj-578" : [ "ramp_time[93]", "ramp_time", 0 ],
			"obj-93::obj-55" : [ "counterreset[38]", "counterreset", 0 ],
			"obj-82::obj-26" : [ "counter[78]", "counter", 0 ],
			"obj-76::obj-578" : [ "ramp_time[73]", "ramp_time", 0 ],
			"obj-66::obj-578" : [ "ramp_time[68]", "ramp_time", 0 ],
			"obj-62::obj-55" : [ "counterreset[14]", "counterreset", 0 ],
			"obj-54::obj-73" : [ "initial_value[6]", "initial_value", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-102::obj-10" : 				{
					"parameter_longname" : "bar[11]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-14::obj-26" : 				{
					"parameter_longname" : "counter[19]"
				}
,
				"obj-8::obj-578" : 				{
					"parameter_longname" : "ramp_time[13]"
				}
,
				"obj-26::obj-578" : 				{
					"parameter_longname" : "ramp_time[29]"
				}
,
				"obj-20::obj-17" : 				{
					"parameter_longname" : "custom_value[24]"
				}
,
				"obj-19::obj-57" : 				{
					"parameter_longname" : "transportreset[73]"
				}
,
				"obj-36::obj-26" : 				{
					"parameter_longname" : "counter[39]"
				}
,
				"obj-31::obj-10" : 				{
					"parameter_longname" : "beat[24]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-47::obj-9" : 				{
					"parameter_longname" : "bar[59]"
				}
,
				"obj-37::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[50]"
				}
,
				"obj-112::obj-73" : 				{
					"parameter_longname" : "initial_value[45]"
				}
,
				"obj-99::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[40]"
				}
,
				"obj-89::obj-67" : 				{
					"parameter_longname" : "toggle[85]"
				}
,
				"obj-84::obj-17" : 				{
					"parameter_longname" : "custom_value[80]"
				}
,
				"obj-71::obj-26" : 				{
					"parameter_longname" : "counter[70]"
				}
,
				"obj-64::obj-578" : 				{
					"parameter_longname" : "ramp_time[66]"
				}
,
				"obj-56::obj-10" : 				{
					"parameter_longname" : "beat[48]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-98::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[96]"
				}
,
				"obj-105::obj-26" : 				{
					"parameter_longname" : "counter[8]"
				}
,
				"obj-12::obj-55" : 				{
					"parameter_longname" : "counterreset[87]"
				}
,
				"obj-10::obj-55" : 				{
					"parameter_longname" : "counterreset[85]"
				}
,
				"obj-6::obj-55" : 				{
					"parameter_longname" : "counterreset[81]"
				}
,
				"obj-23::obj-578" : 				{
					"parameter_longname" : "ramp_time[26]"
				}
,
				"obj-17::obj-578" : 				{
					"parameter_longname" : "ramp_time[21]"
				}
,
				"obj-33::obj-57" : 				{
					"parameter_longname" : "transportreset[66]"
				}
,
				"obj-29::obj-26" : 				{
					"parameter_longname" : "counter[32]"
				}
,
				"obj-45::obj-57" : 				{
					"parameter_longname" : "transportreset[57]"
				}
,
				"obj-40::obj-578" : 				{
					"parameter_longname" : "ramp_time[42]"
				}
,
				"obj-114::obj-79" : 				{
					"parameter_longname" : "destination_value[97]"
				}
,
				"obj-108::obj-73" : 				{
					"parameter_longname" : "initial_value[42]"
				}
,
				"obj-93::obj-26" : 				{
					"parameter_longname" : "counter[88]"
				}
,
				"obj-86::obj-55" : 				{
					"parameter_longname" : "counterreset[32]"
				}
,
				"obj-82::obj-17" : 				{
					"parameter_longname" : "custom_value[78]"
				}
,
				"obj-75::obj-57" : 				{
					"parameter_longname" : "transportreset[22]"
				}
,
				"obj-66::obj-55" : 				{
					"parameter_longname" : "counterreset[18]"
				}
,
				"obj-61::obj-578" : 				{
					"parameter_longname" : "ramp_time[63]"
				}
,
				"obj-58::obj-55" : 				{
					"parameter_longname" : "counterreset[10]"
				}
,
				"obj-54::obj-57" : 				{
					"parameter_longname" : "transportreset[6]"
				}
,
				"obj-49::obj-578" : 				{
					"parameter_longname" : "ramp_time[51]"
				}
,
				"obj-95::obj-57" : 				{
					"parameter_longname" : "transportreset[99]"
				}
,
				"obj-96::obj-73" : 				{
					"parameter_longname" : "initial_value[98]"
				}
,
				"obj-103::obj-55" : 				{
					"parameter_longname" : "counterreset[93]"
				}
,
				"obj-14::obj-55" : 				{
					"parameter_longname" : "counterreset[89]"
				}
,
				"obj-8::obj-57" : 				{
					"parameter_longname" : "transportreset[83]"
				}
,
				"obj-25::obj-10" : 				{
					"parameter_longname" : "beat[18]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-20::obj-26" : 				{
					"parameter_longname" : "counter[24]"
				}
,
				"obj-19::obj-73" : 				{
					"parameter_longname" : "initial_value[73]"
				}
,
				"obj-31::obj-9" : 				{
					"parameter_longname" : "bar[44]"
				}
,
				"obj-47::obj-10" : 				{
					"parameter_longname" : "beat[39]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-42::obj-55" : 				{
					"parameter_longname" : "counterreset[54]"
				}
,
				"obj-37::obj-578" : 				{
					"parameter_longname" : "ramp_time[40]"
				}
,
				"obj-111::obj-79" : 				{
					"parameter_longname" : "destination_value[94]"
				}
,
				"obj-99::obj-79" : 				{
					"parameter_longname" : "destination_value[90]"
				}
,
				"obj-88::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[34]"
				}
,
				"obj-84::obj-55" : 				{
					"parameter_longname" : "counterreset[30]"
				}
,
				"obj-78::obj-10" : 				{
					"parameter_longname" : "beat[65]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-71::obj-578" : 				{
					"parameter_longname" : "ramp_time[70]"
				}
,
				"obj-63::obj-10" : 				{
					"parameter_longname" : "beat[55]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-56::obj-57" : 				{
					"parameter_longname" : "transportreset[8]"
				}
,
				"obj-51::obj-578" : 				{
					"parameter_longname" : "ramp_time[53]"
				}
,
				"obj-101::obj-57" : 				{
					"parameter_longname" : "transportreset[95]"
				}
,
				"obj-105::obj-55" : 				{
					"parameter_longname" : "counterreset[91]"
				}
,
				"obj-11::obj-17" : 				{
					"parameter_longname" : "custom_value[16]"
				}
,
				"obj-10::obj-67" : 				{
					"parameter_longname" : "toggle[15]"
				}
,
				"obj-5::obj-55" : 				{
					"parameter_longname" : "counterreset[80]"
				}
,
				"obj-23::obj-57" : 				{
					"parameter_longname" : "transportreset[76]"
				}
,
				"obj-33::obj-79" : 				{
					"parameter_longname" : "destination_value[36]"
				}
,
				"obj-28::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[61]"
				}
,
				"obj-44::obj-73" : 				{
					"parameter_longname" : "initial_value[56]"
				}
,
				"obj-40::obj-57" : 				{
					"parameter_longname" : "transportreset[52]"
				}
,
				"obj-108::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[42]"
				}
,
				"obj-92::obj-55" : 				{
					"parameter_longname" : "counterreset[37]"
				}
,
				"obj-91::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[36]"
				}
,
				"obj-86::obj-26" : 				{
					"parameter_longname" : "counter[82]"
				}
,
				"obj-81::obj-57" : 				{
					"parameter_longname" : "transportreset[27]"
				}
,
				"obj-75::obj-73" : 				{
					"parameter_longname" : "initial_value[22]"
				}
,
				"obj-61::obj-79" : 				{
					"parameter_longname" : "destination_value[63]"
				}
,
				"obj-58::obj-26" : 				{
					"parameter_longname" : "counter[60]"
				}
,
				"obj-53::obj-17" : 				{
					"parameter_longname" : "custom_value[55]"
				}
,
				"obj-49::obj-26" : 				{
					"parameter_longname" : "counter[51]"
				}
,
				"obj-96::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[98]"
				}
,
				"obj-103::obj-67" : 				{
					"parameter_longname" : "toggle[6]"
				}
,
				"obj-13::obj-67" : 				{
					"parameter_longname" : "toggle[18]"
				}
,
				"obj-25::obj-26" : 				{
					"parameter_longname" : "counter[28]"
				}
,
				"obj-19::obj-79" : 				{
					"parameter_longname" : "destination_value[23]"
				}
,
				"obj-35::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[68]"
				}
,
				"obj-46::obj-10" : 				{
					"parameter_longname" : "beat[38]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-42::obj-26" : 				{
					"parameter_longname" : "counter[44]"
				}
,
				"obj-116::obj-578" : 				{
					"parameter_longname" : "ramp_time[99]"
				}
,
				"obj-111::obj-55" : 				{
					"parameter_longname" : "counterreset[44]"
				}
,
				"obj-88::obj-55" : 				{
					"parameter_longname" : "counterreset[34]"
				}
,
				"obj-83::obj-10" : 				{
					"parameter_longname" : "beat[69]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-78::obj-67" : 				{
					"parameter_longname" : "toggle[75]"
				}
,
				"obj-77::obj-79" : 				{
					"parameter_longname" : "destination_value[74]"
				}
,
				"obj-63::obj-578" : 				{
					"parameter_longname" : "ramp_time[65]"
				}
,
				"obj-60::obj-9" : 				{
					"parameter_longname" : "bar[72]"
				}
,
				"obj-55::obj-73" : 				{
					"parameter_longname" : "initial_value[7]"
				}
,
				"obj-51::obj-67" : 				{
					"parameter_longname" : "toggle[53]"
				}
,
				"obj-101::obj-79" : 				{
					"parameter_longname" : "destination_value[4]"
				}
,
				"obj-11::obj-26" : 				{
					"parameter_longname" : "counter[16]"
				}
,
				"obj-5::obj-26" : 				{
					"parameter_longname" : "counter[10]"
				}
,
				"obj-21::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[75]"
				}
,
				"obj-15::obj-26" : 				{
					"parameter_longname" : "counter[20]"
				}
,
				"obj-33::obj-17" : 				{
					"parameter_longname" : "custom_value[36]"
				}
,
				"obj-27::obj-26" : 				{
					"parameter_longname" : "counter[30]"
				}
,
				"obj-44::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[56]"
				}
,
				"obj-38::obj-10" : 				{
					"parameter_longname" : "beat[31]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-113::obj-79" : 				{
					"parameter_longname" : "destination_value[96]"
				}
,
				"obj-92::obj-9" : 				{
					"parameter_longname" : "bar[97]"
				}
,
				"obj-91::obj-578" : 				{
					"parameter_longname" : "ramp_time[86]"
				}
,
				"obj-85::obj-10" : 				{
					"parameter_longname" : "beat[71]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-81::obj-10" : 				{
					"parameter_longname" : "beat[67]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-75::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[22]"
				}
,
				"obj-65::obj-9" : 				{
					"parameter_longname" : "bar[77]"
				}
,
				"obj-57::obj-57" : 				{
					"parameter_longname" : "transportreset[9]"
				}
,
				"obj-53::obj-9" : 				{
					"parameter_longname" : "bar[65]"
				}
,
				"obj-48::obj-10" : 				{
					"parameter_longname" : "beat[40]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-97::obj-67" : 				{
					"parameter_longname" : "toggle[2]"
				}
,
				"obj-13::obj-578" : 				{
					"parameter_longname" : "ramp_time[18]"
				}
,
				"obj-7::obj-73" : 				{
					"parameter_longname" : "initial_value[82]"
				}
,
				"obj-18::obj-17" : 				{
					"parameter_longname" : "custom_value[22]"
				}
,
				"obj-35::obj-578" : 				{
					"parameter_longname" : "ramp_time[38]"
				}
,
				"obj-30::obj-26" : 				{
					"parameter_longname" : "counter[33]"
				}
,
				"obj-46::obj-26" : 				{
					"parameter_longname" : "counter[48]"
				}
,
				"obj-41::obj-55" : 				{
					"parameter_longname" : "counterreset[53]"
				}
,
				"obj-116::obj-79" : 				{
					"parameter_longname" : "destination_value[99]"
				}
,
				"obj-115::obj-578" : 				{
					"parameter_longname" : "ramp_time[98]"
				}
,
				"obj-111::obj-57" : 				{
					"parameter_longname" : "transportreset[44]"
				}
,
				"obj-94::obj-73" : 				{
					"parameter_longname" : "initial_value[39]"
				}
,
				"obj-83::obj-67" : 				{
					"parameter_longname" : "toggle[79]"
				}
,
				"obj-77::obj-9" : 				{
					"parameter_longname" : "bar[84]"
				}
,
				"obj-77::obj-73" : 				{
					"parameter_longname" : "initial_value[24]"
				}
,
				"obj-67::obj-67" : 				{
					"parameter_longname" : "toggle[69]"
				}
,
				"obj-63::obj-55" : 				{
					"parameter_longname" : "counterreset[15]"
				}
,
				"obj-55::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[7]"
				}
,
				"obj-50::obj-55" : 				{
					"parameter_longname" : "counterreset[2]"
				}
,
				"obj-101::obj-17" : 				{
					"parameter_longname" : "custom_value[4]"
				}
,
				"obj-106::obj-9" : 				{
					"parameter_longname" : "bar[18]"
				}
,
				"obj-9::obj-578" : 				{
					"parameter_longname" : "ramp_time[14]"
				}
,
				"obj-21::obj-578" : 				{
					"parameter_longname" : "ramp_time[25]"
				}
,
				"obj-15::obj-55" : 				{
					"parameter_longname" : "counterreset[70]"
				}
,
				"obj-32::obj-67" : 				{
					"parameter_longname" : "toggle[35]"
				}
,
				"obj-27::obj-55" : 				{
					"parameter_longname" : "counterreset[60]"
				}
,
				"obj-38::obj-67" : 				{
					"parameter_longname" : "toggle[41]"
				}
,
				"obj-113::obj-578" : 				{
					"parameter_longname" : "ramp_time[96]"
				}
,
				"obj-100::obj-79" : 				{
					"parameter_longname" : "destination_value[91]"
				}
,
				"obj-92::obj-67" : 				{
					"parameter_longname" : "toggle[87]"
				}
,
				"obj-85::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[31]"
				}
,
				"obj-74::obj-10" : 				{
					"parameter_longname" : "beat[61]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-65::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[17]"
				}
,
				"obj-60::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[12]"
				}
,
				"obj-57::obj-578" : 				{
					"parameter_longname" : "ramp_time[59]"
				}
,
				"obj-48::obj-79" : 				{
					"parameter_longname" : "destination_value[50]"
				}
,
				"obj-95::obj-9" : 				{
					"parameter_longname" : "bar",
					"parameter_shortname" : "bar",
					"parameter_initial_enable" : 0,
					"parameter_range" : [ 1.0, 500.0 ],
					"parameter_invisible" : 0
				}
,
				"obj-95::obj-17" : 				{
					"parameter_longname" : "custom_value"
				}
,
				"obj-97::obj-9" : 				{
					"parameter_longname" : "bar[5]"
				}
,
				"obj-104::obj-73" : 				{
					"parameter_longname" : "initial_value[92]"
				}
,
				"obj-13::obj-55" : 				{
					"parameter_longname" : "counterreset[88]"
				}
,
				"obj-7::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[82]"
				}
,
				"obj-24::obj-17" : 				{
					"parameter_longname" : "custom_value[27]"
				}
,
				"obj-18::obj-10" : 				{
					"parameter_longname" : "beat[12]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-34::obj-79" : 				{
					"parameter_longname" : "destination_value[37]"
				}
,
				"obj-30::obj-55" : 				{
					"parameter_longname" : "counterreset[63]"
				}
,
				"obj-41::obj-26" : 				{
					"parameter_longname" : "counter[43]"
				}
,
				"obj-115::obj-79" : 				{
					"parameter_longname" : "destination_value[98]"
				}
,
				"obj-110::obj-9" : 				{
					"parameter_longname" : "bar[103]"
				}
,
				"obj-94::obj-578" : 				{
					"parameter_longname" : "ramp_time[89]"
				}
,
				"obj-87::obj-9" : 				{
					"parameter_longname" : "bar[93]"
				}
,
				"obj-76::obj-10" : 				{
					"parameter_longname" : "beat[63]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-67::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[19]"
				}
,
				"obj-62::obj-67" : 				{
					"parameter_longname" : "toggle[64]"
				}
,
				"obj-59::obj-10" : 				{
					"parameter_longname" : "beat[51]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-50::obj-10" : 				{
					"parameter_longname" : "beat[42]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-102::obj-67" : 				{
					"parameter_longname" : "toggle[5]"
				}
,
				"obj-106::obj-10" : 				{
					"parameter_longname" : "bar[19]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-9::obj-67" : 				{
					"parameter_longname" : "toggle[14]"
				}
,
				"obj-26::obj-17" : 				{
					"parameter_longname" : "custom_value[29]"
				}
,
				"obj-21::obj-57" : 				{
					"parameter_longname" : "transportreset[75]"
				}
,
				"obj-36::obj-73" : 				{
					"parameter_longname" : "initial_value[69]"
				}
,
				"obj-32::obj-73" : 				{
					"parameter_longname" : "initial_value[65]"
				}
,
				"obj-27::obj-67" : 				{
					"parameter_longname" : "toggle[30]"
				}
,
				"obj-43::obj-79" : 				{
					"parameter_longname" : "destination_value[45]"
				}
,
				"obj-112::obj-79" : 				{
					"parameter_longname" : "destination_value[95]"
				}
,
				"obj-100::obj-9" : 				{
					"parameter_longname" : "bar[101]"
				}
,
				"obj-89::obj-578" : 				{
					"parameter_longname" : "ramp_time[85]"
				}
,
				"obj-85::obj-67" : 				{
					"parameter_longname" : "toggle[81]"
				}
,
				"obj-80::obj-73" : 				{
					"parameter_longname" : "initial_value[26]"
				}
,
				"obj-74::obj-57" : 				{
					"parameter_longname" : "transportreset[21]"
				}
,
				"obj-64::obj-26" : 				{
					"parameter_longname" : "counter[66]"
				}
,
				"obj-57::obj-73" : 				{
					"parameter_longname" : "initial_value[9]"
				}
,
				"obj-52::obj-9" : 				{
					"parameter_longname" : "bar[64]"
				}
,
				"obj-98::obj-79" : 				{
					"parameter_longname" : "destination_value[3]"
				}
,
				"obj-104::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[92]"
				}
,
				"obj-12::obj-57" : 				{
					"parameter_longname" : "transportreset[87]"
				}
,
				"obj-6::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[81]"
				}
,
				"obj-24::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[77]"
				}
,
				"obj-34::obj-17" : 				{
					"parameter_longname" : "custom_value[37]"
				}
,
				"obj-29::obj-73" : 				{
					"parameter_longname" : "initial_value[62]"
				}
,
				"obj-45::obj-79" : 				{
					"parameter_longname" : "destination_value[47]"
				}
,
				"obj-41::obj-17" : 				{
					"parameter_longname" : "custom_value[43]"
				}
,
				"obj-114::obj-73" : 				{
					"parameter_longname" : "initial_value[47]"
				}
,
				"obj-110::obj-67" : 				{
					"parameter_longname" : "toggle[93]"
				}
,
				"obj-93::obj-73" : 				{
					"parameter_longname" : "initial_value[38]"
				}
,
				"obj-87::obj-67" : 				{
					"parameter_longname" : "toggle[83]"
				}
,
				"obj-82::obj-67" : 				{
					"parameter_longname" : "toggle[78]"
				}
,
				"obj-76::obj-9" : 				{
					"parameter_longname" : "bar[83]"
				}
,
				"obj-66::obj-57" : 				{
					"parameter_longname" : "transportreset[18]"
				}
,
				"obj-62::obj-26" : 				{
					"parameter_longname" : "counter[64]"
				}
,
				"obj-59::obj-26" : 				{
					"parameter_longname" : "counter[61]"
				}
,
				"obj-54::obj-26" : 				{
					"parameter_longname" : "counter[56]"
				}
,
				"obj-50::obj-73" : 				{
					"parameter_longname" : "initial_value[2]"
				}
,
				"obj-102::obj-73" : 				{
					"parameter_longname" : "initial_value[94]"
				}
,
				"obj-14::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[89]"
				}
,
				"obj-8::obj-9" : 				{
					"parameter_longname" : "bar[23]"
				}
,
				"obj-26::obj-9" : 				{
					"parameter_longname" : "bar[39]"
				}
,
				"obj-20::obj-73" : 				{
					"parameter_longname" : "initial_value[74]"
				}
,
				"obj-36::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[69]"
				}
,
				"obj-47::obj-67" : 				{
					"parameter_longname" : "toggle[49]"
				}
,
				"obj-43::obj-9" : 				{
					"parameter_longname" : "bar[55]"
				}
,
				"obj-37::obj-55" : 				{
					"parameter_longname" : "counterreset[50]"
				}
,
				"obj-112::obj-9" : 				{
					"parameter_longname" : "bar[105]"
				}
,
				"obj-99::obj-9" : 				{
					"parameter_longname" : "bar[100]"
				}
,
				"obj-89::obj-73" : 				{
					"parameter_longname" : "initial_value[35]"
				}
,
				"obj-84::obj-26" : 				{
					"parameter_longname" : "counter[80]"
				}
,
				"obj-80::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[26]"
				}
,
				"obj-64::obj-79" : 				{
					"parameter_longname" : "destination_value[66]"
				}
,
				"obj-56::obj-578" : 				{
					"parameter_longname" : "ramp_time[58]"
				}
,
				"obj-52::obj-79" : 				{
					"parameter_longname" : "destination_value[54]"
				}
,
				"obj-98::obj-17" : 				{
					"parameter_longname" : "custom_value[3]"
				}
,
				"obj-105::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[91]"
				}
,
				"obj-12::obj-10" : 				{
					"parameter_longname" : "beat[7]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-6::obj-578" : 				{
					"parameter_longname" : "ramp_time[11]"
				}
,
				"obj-23::obj-9" : 				{
					"parameter_longname" : "bar[36]"
				}
,
				"obj-17::obj-9" : 				{
					"parameter_longname" : "bar[31]"
				}
,
				"obj-29::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[62]"
				}
,
				"obj-45::obj-578" : 				{
					"parameter_longname" : "ramp_time[47]"
				}
,
				"obj-40::obj-73" : 				{
					"parameter_longname" : "initial_value[52]"
				}
,
				"obj-114::obj-57" : 				{
					"parameter_longname" : "transportreset[47]"
				}
,
				"obj-93::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[38]"
				}
,
				"obj-86::obj-73" : 				{
					"parameter_longname" : "initial_value[32]"
				}
,
				"obj-82::obj-73" : 				{
					"parameter_longname" : "initial_value[28]"
				}
,
				"obj-66::obj-17" : 				{
					"parameter_longname" : "custom_value[68]"
				}
,
				"obj-58::obj-10" : 				{
					"parameter_longname" : "beat[50]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-54::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[6]"
				}
,
				"obj-49::obj-10" : 				{
					"parameter_longname" : "beat[41]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-95::obj-55" : 				{
					"parameter_longname" : "counterreset[99]"
				}
,
				"obj-96::obj-79" : 				{
					"parameter_longname" : "destination_value[1]"
				}
,
				"obj-14::obj-578" : 				{
					"parameter_longname" : "ramp_time[19]"
				}
,
				"obj-8::obj-10" : 				{
					"parameter_longname" : "beat[3]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-25::obj-73" : 				{
					"parameter_longname" : "initial_value[78]"
				}
,
				"obj-20::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[74]"
				}
,
				"obj-19::obj-9" : 				{
					"parameter_longname" : "bar[33]"
				}
,
				"obj-36::obj-578" : 				{
					"parameter_longname" : "ramp_time[39]"
				}
,
				"obj-31::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[64]"
				}
,
				"obj-47::obj-73" : 				{
					"parameter_longname" : "initial_value[59]"
				}
,
				"obj-42::obj-10" : 				{
					"parameter_longname" : "beat[34]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-37::obj-26" : 				{
					"parameter_longname" : "counter[40]"
				}
,
				"obj-99::obj-10" : 				{
					"parameter_longname" : "beat[80]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-88::obj-57" : 				{
					"parameter_longname" : "transportreset[34]"
				}
,
				"obj-84::obj-67" : 				{
					"parameter_longname" : "toggle[80]"
				}
,
				"obj-78::obj-578" : 				{
					"parameter_longname" : "ramp_time[75]"
				}
,
				"obj-71::obj-10" : 				{
					"parameter_longname" : "beat[60]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-56::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[8]"
				}
,
				"obj-51::obj-9" : 				{
					"parameter_longname" : "bar[63]"
				}
,
				"obj-105::obj-578" : 				{
					"parameter_longname" : "ramp_time[8]"
				}
,
				"obj-10::obj-57" : 				{
					"parameter_longname" : "transportreset[85]"
				}
,
				"obj-23::obj-10" : 				{
					"parameter_longname" : "beat[16]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-17::obj-10" : 				{
					"parameter_longname" : "beat[11]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-33::obj-26" : 				{
					"parameter_longname" : "counter[36]"
				}
,
				"obj-29::obj-578" : 				{
					"parameter_longname" : "ramp_time[32]"
				}
,
				"obj-28::obj-17" : 				{
					"parameter_longname" : "custom_value[31]"
				}
,
				"obj-44::obj-9" : 				{
					"parameter_longname" : "bar[56]"
				}
,
				"obj-40::obj-17" : 				{
					"parameter_longname" : "custom_value[42]"
				}
,
				"obj-114::obj-55" : 				{
					"parameter_longname" : "counterreset[47]"
				}
,
				"obj-108::obj-79" : 				{
					"parameter_longname" : "destination_value[92]"
				}
,
				"obj-86::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[32]"
				}
,
				"obj-81::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[27]"
				}
,
				"obj-75::obj-79" : 				{
					"parameter_longname" : "destination_value[72]"
				}
,
				"obj-66::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[18]"
				}
,
				"obj-61::obj-17" : 				{
					"parameter_longname" : "custom_value[63]"
				}
,
				"obj-58::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[10]"
				}
,
				"obj-53::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[5]"
				}
,
				"obj-49::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[1]"
				}
,
				"obj-96::obj-17" : 				{
					"parameter_longname" : "custom_value[1]"
				}
,
				"obj-103::obj-57" : 				{
					"parameter_longname" : "transportreset[93]"
				}
,
				"obj-8::obj-26" : 				{
					"parameter_longname" : "counter[13]"
				}
,
				"obj-25::obj-57" : 				{
					"parameter_longname" : "transportreset[78]"
				}
,
				"obj-19::obj-17" : 				{
					"parameter_longname" : "custom_value[23]"
				}
,
				"obj-35::obj-17" : 				{
					"parameter_longname" : "custom_value[38]"
				}
,
				"obj-31::obj-17" : 				{
					"parameter_longname" : "custom_value[34]"
				}
,
				"obj-42::obj-67" : 				{
					"parameter_longname" : "toggle[44]"
				}
,
				"obj-116::obj-67" : 				{
					"parameter_longname" : "toggle[99]"
				}
,
				"obj-116::obj-26" : 				{
					"parameter_longname" : "counter[99]"
				}
,
				"obj-111::obj-26" : 				{
					"parameter_longname" : "counter[94]"
				}
,
				"obj-99::obj-55" : 				{
					"parameter_longname" : "counterreset[40]"
				}
,
				"obj-88::obj-67" : 				{
					"parameter_longname" : "toggle[84]"
				}
,
				"obj-78::obj-79" : 				{
					"parameter_longname" : "destination_value[75]"
				}
,
				"obj-71::obj-9" : 				{
					"parameter_longname" : "bar[80]"
				}
,
				"obj-63::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[15]"
				}
,
				"obj-51::obj-73" : 				{
					"parameter_longname" : "initial_value[3]"
				}
,
				"obj-101::obj-26" : 				{
					"parameter_longname" : "counter[4]"
				}
,
				"obj-105::obj-57" : 				{
					"parameter_longname" : "transportreset[91]"
				}
,
				"obj-11::obj-55" : 				{
					"parameter_longname" : "counterreset[86]"
				}
,
				"obj-10::obj-79" : 				{
					"parameter_longname" : "destination_value[15]"
				}
,
				"obj-5::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[80]"
				}
,
				"obj-15::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[70]"
				}
,
				"obj-33::obj-55" : 				{
					"parameter_longname" : "counterreset[66]"
				}
,
				"obj-28::obj-578" : 				{
					"parameter_longname" : "ramp_time[31]"
				}
,
				"obj-44::obj-55" : 				{
					"parameter_longname" : "counterreset[56]"
				}
,
				"obj-113::obj-17" : 				{
					"parameter_longname" : "custom_value[96]"
				}
,
				"obj-108::obj-578" : 				{
					"parameter_longname" : "ramp_time[92]"
				}
,
				"obj-92::obj-57" : 				{
					"parameter_longname" : "transportreset[37]"
				}
,
				"obj-91::obj-57" : 				{
					"parameter_longname" : "transportreset[36]"
				}
,
				"obj-81::obj-578" : 				{
					"parameter_longname" : "ramp_time[77]"
				}
,
				"obj-75::obj-9" : 				{
					"parameter_longname" : "bar[82]"
				}
,
				"obj-65::obj-73" : 				{
					"parameter_longname" : "initial_value[17]"
				}
,
				"obj-61::obj-10" : 				{
					"parameter_longname" : "beat[53]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-53::obj-67" : 				{
					"parameter_longname" : "toggle[55]"
				}
,
				"obj-97::obj-10" : 				{
					"parameter_longname" : "bar[4]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-103::obj-79" : 				{
					"parameter_longname" : "destination_value[6]"
				}
,
				"obj-13::obj-9" : 				{
					"parameter_longname" : "bar[28]"
				}
,
				"obj-7::obj-79" : 				{
					"parameter_longname" : "destination_value[12]"
				}
,
				"obj-25::obj-578" : 				{
					"parameter_longname" : "ramp_time[28]"
				}
,
				"obj-18::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[72]"
				}
,
				"obj-35::obj-9" : 				{
					"parameter_longname" : "bar[48]"
				}
,
				"obj-30::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[63]"
				}
,
				"obj-46::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[58]"
				}
,
				"obj-116::obj-17" : 				{
					"parameter_longname" : "custom_value[99]"
				}
,
				"obj-115::obj-26" : 				{
					"parameter_longname" : "counter[98]"
				}
,
				"obj-111::obj-10" : 				{
					"parameter_longname" : "beat[84]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-94::obj-55" : 				{
					"parameter_longname" : "counterreset[39]"
				}
,
				"obj-88::obj-578" : 				{
					"parameter_longname" : "ramp_time[84]"
				}
,
				"obj-83::obj-79" : 				{
					"parameter_longname" : "destination_value[79]"
				}
,
				"obj-77::obj-57" : 				{
					"parameter_longname" : "transportreset[24]"
				}
,
				"obj-67::obj-79" : 				{
					"parameter_longname" : "destination_value[69]"
				}
,
				"obj-63::obj-79" : 				{
					"parameter_longname" : "destination_value[65]"
				}
,
				"obj-60::obj-10" : 				{
					"parameter_longname" : "beat[52]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-55::obj-9" : 				{
					"parameter_longname" : "bar[67]"
				}
,
				"obj-101::obj-55" : 				{
					"parameter_longname" : "counterreset[95]"
				}
,
				"obj-106::obj-67" : 				{
					"parameter_longname" : "toggle[9]"
				}
,
				"obj-9::obj-9" : 				{
					"parameter_longname" : "bar[24]"
				}
,
				"obj-5::obj-578" : 				{
					"parameter_longname" : "ramp_time[10]"
				}
,
				"obj-21::obj-26" : 				{
					"parameter_longname" : "counter[25]"
				}
,
				"obj-15::obj-578" : 				{
					"parameter_longname" : "ramp_time[20]"
				}
,
				"obj-32::obj-57" : 				{
					"parameter_longname" : "transportreset[65]"
				}
,
				"obj-27::obj-578" : 				{
					"parameter_longname" : "ramp_time[30]"
				}
,
				"obj-44::obj-26" : 				{
					"parameter_longname" : "counter[46]"
				}
,
				"obj-38::obj-79" : 				{
					"parameter_longname" : "destination_value[41]"
				}
,
				"obj-113::obj-26" : 				{
					"parameter_longname" : "counter[96]"
				}
,
				"obj-100::obj-10" : 				{
					"parameter_longname" : "beat[81]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-92::obj-10" : 				{
					"parameter_longname" : "beat[77]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-91::obj-73" : 				{
					"parameter_longname" : "initial_value[36]"
				}
,
				"obj-85::obj-79" : 				{
					"parameter_longname" : "destination_value[81]"
				}
,
				"obj-81::obj-79" : 				{
					"parameter_longname" : "destination_value[77]"
				}
,
				"obj-74::obj-67" : 				{
					"parameter_longname" : "toggle[71]"
				}
,
				"obj-65::obj-55" : 				{
					"parameter_longname" : "counterreset[17]"
				}
,
				"obj-60::obj-55" : 				{
					"parameter_longname" : "counterreset[12]"
				}
,
				"obj-57::obj-26" : 				{
					"parameter_longname" : "counter[59]"
				}
,
				"obj-53::obj-57" : 				{
					"parameter_longname" : "transportreset[5]"
				}
,
				"obj-48::obj-578" : 				{
					"parameter_longname" : "ramp_time[50]"
				}
,
				"obj-97::obj-578" : 				{
					"parameter_longname" : "ramp_time[2]"
				}
,
				"obj-104::obj-79" : 				{
					"parameter_longname" : "destination_value[7]"
				}
,
				"obj-13::obj-73" : 				{
					"parameter_longname" : "initial_value[88]"
				}
,
				"obj-7::obj-17" : 				{
					"parameter_longname" : "custom_value[12]"
				}
,
				"obj-24::obj-73" : 				{
					"parameter_longname" : "initial_value[77]"
				}
,
				"obj-18::obj-67" : 				{
					"parameter_longname" : "toggle[22]"
				}
,
				"obj-30::obj-578" : 				{
					"parameter_longname" : "ramp_time[33]"
				}
,
				"obj-46::obj-578" : 				{
					"parameter_longname" : "ramp_time[48]"
				}
,
				"obj-41::obj-67" : 				{
					"parameter_longname" : "toggle[43]"
				}
,
				"obj-115::obj-17" : 				{
					"parameter_longname" : "custom_value[98]"
				}
,
				"obj-110::obj-73" : 				{
					"parameter_longname" : "initial_value[43]"
				}
,
				"obj-94::obj-26" : 				{
					"parameter_longname" : "counter[89]"
				}
,
				"obj-87::obj-26" : 				{
					"parameter_longname" : "counter[83]"
				}
,
				"obj-83::obj-9" : 				{
					"parameter_longname" : "bar[89]"
				}
,
				"obj-67::obj-578" : 				{
					"parameter_longname" : "ramp_time[69]"
				}
,
				"obj-62::obj-73" : 				{
					"parameter_longname" : "initial_value[14]"
				}
,
				"obj-59::obj-578" : 				{
					"parameter_longname" : "ramp_time[61]"
				}
,
				"obj-55::obj-17" : 				{
					"parameter_longname" : "custom_value[57]"
				}
,
				"obj-50::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[2]"
				}
,
				"obj-102::obj-57" : 				{
					"parameter_longname" : "transportreset[94]"
				}
,
				"obj-106::obj-73" : 				{
					"parameter_longname" : "initial_value[90]"
				}
,
				"obj-9::obj-73" : 				{
					"parameter_longname" : "initial_value[84]"
				}
,
				"obj-26::obj-55" : 				{
					"parameter_longname" : "counterreset[79]"
				}
,
				"obj-21::obj-17" : 				{
					"parameter_longname" : "custom_value[25]"
				}
,
				"obj-32::obj-79" : 				{
					"parameter_longname" : "destination_value[35]"
				}
,
				"obj-27::obj-57" : 				{
					"parameter_longname" : "transportreset[60]"
				}
,
				"obj-43::obj-17" : 				{
					"parameter_longname" : "custom_value[45]"
				}
,
				"obj-38::obj-9" : 				{
					"parameter_longname" : "bar[51]"
				}
,
				"obj-100::obj-578" : 				{
					"parameter_longname" : "ramp_time[91]"
				}
,
				"obj-89::obj-57" : 				{
					"parameter_longname" : "transportreset[35]"
				}
,
				"obj-85::obj-9" : 				{
					"parameter_longname" : "bar[91]"
				}
,
				"obj-80::obj-9" : 				{
					"parameter_longname" : "bar[86]"
				}
,
				"obj-74::obj-578" : 				{
					"parameter_longname" : "ramp_time[71]"
				}
,
				"obj-60::obj-73" : 				{
					"parameter_longname" : "initial_value[12]"
				}
,
				"obj-57::obj-79" : 				{
					"parameter_longname" : "destination_value[59]"
				}
,
				"obj-52::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[4]"
				}
,
				"obj-95::obj-578" : 				{
					"parameter_longname" : "ramp_time",
					"parameter_invisible" : 0
				}
,
				"obj-104::obj-17" : 				{
					"parameter_longname" : "custom_value[7]"
				}
,
				"obj-12::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[87]"
				}
,
				"obj-24::obj-57" : 				{
					"parameter_longname" : "transportreset[77]"
				}
,
				"obj-18::obj-578" : 				{
					"parameter_longname" : "ramp_time[22]"
				}
,
				"obj-34::obj-55" : 				{
					"parameter_longname" : "counterreset[67]"
				}
,
				"obj-45::obj-17" : 				{
					"parameter_longname" : "custom_value[47]"
				}
,
				"obj-41::obj-73" : 				{
					"parameter_longname" : "initial_value[53]"
				}
,
				"obj-110::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[43]"
				}
,
				"obj-87::obj-57" : 				{
					"parameter_longname" : "transportreset[33]"
				}
,
				"obj-82::obj-79" : 				{
					"parameter_longname" : "destination_value[78]"
				}
,
				"obj-76::obj-67" : 				{
					"parameter_longname" : "toggle[73]"
				}
,
				"obj-62::obj-578" : 				{
					"parameter_longname" : "ramp_time[64]"
				}
,
				"obj-59::obj-73" : 				{
					"parameter_longname" : "initial_value[11]"
				}
,
				"obj-54::obj-79" : 				{
					"parameter_longname" : "destination_value[56]"
				}
,
				"obj-50::obj-26" : 				{
					"parameter_longname" : "counter[52]"
				}
,
				"obj-102::obj-79" : 				{
					"parameter_longname" : "destination_value[5]"
				}
,
				"obj-26::obj-67" : 				{
					"parameter_longname" : "toggle[29]"
				}
,
				"obj-20::obj-10" : 				{
					"parameter_longname" : "beat[14]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-36::obj-17" : 				{
					"parameter_longname" : "custom_value[39]"
				}
,
				"obj-32::obj-17" : 				{
					"parameter_longname" : "custom_value[35]"
				}
,
				"obj-47::obj-57" : 				{
					"parameter_longname" : "transportreset[59]"
				}
,
				"obj-43::obj-57" : 				{
					"parameter_longname" : "transportreset[55]"
				}
,
				"obj-37::obj-10" : 				{
					"parameter_longname" : "beat[30]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-112::obj-57" : 				{
					"parameter_longname" : "transportreset[45]"
				}
,
				"obj-89::obj-17" : 				{
					"parameter_longname" : "custom_value[85]"
				}
,
				"obj-84::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[30]"
				}
,
				"obj-80::obj-55" : 				{
					"parameter_longname" : "counterreset[26]"
				}
,
				"obj-74::obj-79" : 				{
					"parameter_longname" : "destination_value[71]"
				}
,
				"obj-64::obj-55" : 				{
					"parameter_longname" : "counterreset[16]"
				}
,
				"obj-56::obj-26" : 				{
					"parameter_longname" : "counter[58]"
				}
,
				"obj-52::obj-26" : 				{
					"parameter_longname" : "counter[54]"
				}
,
				"obj-98::obj-55" : 				{
					"parameter_longname" : "counterreset[96]"
				}
,
				"obj-12::obj-578" : 				{
					"parameter_longname" : "ramp_time[17]"
				}
,
				"obj-11::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[86]"
				}
,
				"obj-6::obj-9" : 				{
					"parameter_longname" : "bar[21]"
				}
,
				"obj-17::obj-67" : 				{
					"parameter_longname" : "toggle[21]"
				}
,
				"obj-34::obj-67" : 				{
					"parameter_longname" : "toggle[37]"
				}
,
				"obj-29::obj-17" : 				{
					"parameter_longname" : "custom_value[32]"
				}
,
				"obj-45::obj-10" : 				{
					"parameter_longname" : "beat[37]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-40::obj-67" : 				{
					"parameter_longname" : "toggle[42]"
				}
,
				"obj-114::obj-26" : 				{
					"parameter_longname" : "counter[97]"
				}
,
				"obj-110::obj-26" : 				{
					"parameter_longname" : "counter[93]"
				}
,
				"obj-93::obj-79" : 				{
					"parameter_longname" : "destination_value[88]"
				}
,
				"obj-82::obj-9" : 				{
					"parameter_longname" : "bar[88]"
				}
,
				"obj-76::obj-73" : 				{
					"parameter_longname" : "initial_value[23]"
				}
,
				"obj-66::obj-26" : 				{
					"parameter_longname" : "counter[68]"
				}
,
				"obj-62::obj-10" : 				{
					"parameter_longname" : "beat[54]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-54::obj-55" : 				{
					"parameter_longname" : "counterreset[6]"
				}
,
				"obj-49::obj-67" : 				{
					"parameter_longname" : "toggle[51]"
				}
,
				"obj-102::obj-17" : 				{
					"parameter_longname" : "custom_value[5]"
				}
,
				"obj-14::obj-9" : 				{
					"parameter_longname" : "bar[29]"
				}
,
				"obj-8::obj-73" : 				{
					"parameter_longname" : "initial_value[83]"
				}
,
				"obj-20::obj-79" : 				{
					"parameter_longname" : "destination_value[24]"
				}
,
				"obj-19::obj-26" : 				{
					"parameter_longname" : "counter[23]"
				}
,
				"obj-36::obj-9" : 				{
					"parameter_longname" : "bar[49]"
				}
,
				"obj-31::obj-26" : 				{
					"parameter_longname" : "counter[34]"
				}
,
				"obj-47::obj-79" : 				{
					"parameter_longname" : "destination_value[49]"
				}
,
				"obj-37::obj-67" : 				{
					"parameter_longname" : "toggle[40]"
				}
,
				"obj-112::obj-10" : 				{
					"parameter_longname" : "beat[85]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-99::obj-57" : 				{
					"parameter_longname" : "transportreset[40]"
				}
,
				"obj-84::obj-79" : 				{
					"parameter_longname" : "destination_value[80]"
				}
,
				"obj-71::obj-55" : 				{
					"parameter_longname" : "counterreset[20]"
				}
,
				"obj-64::obj-73" : 				{
					"parameter_longname" : "initial_value[16]"
				}
,
				"obj-56::obj-17" : 				{
					"parameter_longname" : "custom_value[58]"
				}
,
				"obj-98::obj-67" : 				{
					"parameter_longname" : "toggle[3]"
				}
,
				"obj-105::obj-9" : 				{
					"parameter_longname" : "bar[16]"
				}
,
				"obj-12::obj-79" : 				{
					"parameter_longname" : "destination_value[17]"
				}
,
				"obj-10::obj-10" : 				{
					"parameter_longname" : "beat[5]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-6::obj-10" : 				{
					"parameter_longname" : "beat[1]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-23::obj-73" : 				{
					"parameter_longname" : "initial_value[76]"
				}
,
				"obj-17::obj-73" : 				{
					"parameter_longname" : "initial_value[71]"
				}
,
				"obj-33::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[66]"
				}
,
				"obj-29::obj-9" : 				{
					"parameter_longname" : "bar[42]"
				}
,
				"obj-28::obj-55" : 				{
					"parameter_longname" : "counterreset[61]"
				}
,
				"obj-40::obj-55" : 				{
					"parameter_longname" : "counterreset[52]"
				}
,
				"obj-114::obj-67" : 				{
					"parameter_longname" : "toggle[97]"
				}
,
				"obj-108::obj-10" : 				{
					"parameter_longname" : "beat[82]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-93::obj-67" : 				{
					"parameter_longname" : "toggle[88]"
				}
,
				"obj-86::obj-17" : 				{
					"parameter_longname" : "custom_value[82]"
				}
,
				"obj-75::obj-10" : 				{
					"parameter_longname" : "beat[62]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-66::obj-67" : 				{
					"parameter_longname" : "toggle[68]"
				}
,
				"obj-61::obj-73" : 				{
					"parameter_longname" : "initial_value[13]"
				}
,
				"obj-58::obj-578" : 				{
					"parameter_longname" : "ramp_time[60]"
				}
,
				"obj-49::obj-9" : 				{
					"parameter_longname" : "bar[61]"
				}
,
				"obj-95::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[99]"
				}
,
				"obj-96::obj-55" : 				{
					"parameter_longname" : "counterreset[98]"
				}
,
				"obj-103::obj-10" : 				{
					"parameter_longname" : "bar[13]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-14::obj-10" : 				{
					"parameter_longname" : "beat[9]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-8::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[83]"
				}
,
				"obj-25::obj-17" : 				{
					"parameter_longname" : "custom_value[28]"
				}
,
				"obj-20::obj-67" : 				{
					"parameter_longname" : "toggle[24]"
				}
,
				"obj-19::obj-67" : 				{
					"parameter_longname" : "toggle[23]"
				}
,
				"obj-35::obj-55" : 				{
					"parameter_longname" : "counterreset[68]"
				}
,
				"obj-31::obj-79" : 				{
					"parameter_longname" : "destination_value[34]"
				}
,
				"obj-47::obj-17" : 				{
					"parameter_longname" : "custom_value[49]"
				}
,
				"obj-42::obj-79" : 				{
					"parameter_longname" : "destination_value[44]"
				}
,
				"obj-111::obj-578" : 				{
					"parameter_longname" : "ramp_time[94]"
				}
,
				"obj-99::obj-73" : 				{
					"parameter_longname" : "initial_value[40]"
				}
,
				"obj-88::obj-9" : 				{
					"parameter_longname" : "bar[94]"
				}
,
				"obj-84::obj-578" : 				{
					"parameter_longname" : "ramp_time[80]"
				}
,
				"obj-78::obj-17" : 				{
					"parameter_longname" : "custom_value[75]"
				}
,
				"obj-71::obj-73" : 				{
					"parameter_longname" : "initial_value[20]"
				}
,
				"obj-63::obj-57" : 				{
					"parameter_longname" : "transportreset[15]"
				}
,
				"obj-56::obj-67" : 				{
					"parameter_longname" : "toggle[58]"
				}
,
				"obj-51::obj-55" : 				{
					"parameter_longname" : "counterreset[3]"
				}
,
				"obj-101::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[95]"
				}
,
				"obj-105::obj-10" : 				{
					"parameter_longname" : "bar[17]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-11::obj-79" : 				{
					"parameter_longname" : "destination_value[16]"
				}
,
				"obj-10::obj-26" : 				{
					"parameter_longname" : "counter[15]"
				}
,
				"obj-5::obj-17" : 				{
					"parameter_longname" : "custom_value[10]"
				}
,
				"obj-23::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[76]"
				}
,
				"obj-33::obj-578" : 				{
					"parameter_longname" : "ramp_time[36]"
				}
,
				"obj-28::obj-67" : 				{
					"parameter_longname" : "toggle[31]"
				}
,
				"obj-28::obj-9" : 				{
					"parameter_longname" : "bar[41]"
				}
,
				"obj-44::obj-10" : 				{
					"parameter_longname" : "beat[36]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-40::obj-79" : 				{
					"parameter_longname" : "destination_value[42]"
				}
,
				"obj-113::obj-73" : 				{
					"parameter_longname" : "initial_value[46]"
				}
,
				"obj-108::obj-57" : 				{
					"parameter_longname" : "transportreset[42]"
				}
,
				"obj-92::obj-73" : 				{
					"parameter_longname" : "initial_value[37]"
				}
,
				"obj-91::obj-67" : 				{
					"parameter_longname" : "toggle[86]"
				}
,
				"obj-86::obj-67" : 				{
					"parameter_longname" : "toggle[82]"
				}
,
				"obj-81::obj-26" : 				{
					"parameter_longname" : "counter[77]"
				}
,
				"obj-75::obj-26" : 				{
					"parameter_longname" : "counter[72]"
				}
,
				"obj-65::obj-10" : 				{
					"parameter_longname" : "beat[57]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-61::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[13]"
				}
,
				"obj-58::obj-9" : 				{
					"parameter_longname" : "bar[70]"
				}
,
				"obj-53::obj-79" : 				{
					"parameter_longname" : "destination_value[55]"
				}
,
				"obj-49::obj-17" : 				{
					"parameter_longname" : "custom_value[51]"
				}
,
				"obj-96::obj-67" : 				{
					"parameter_longname" : "toggle[1]"
				}
,
				"obj-97::obj-73" : 				{
					"parameter_longname" : "initial_value[97]"
				}
,
				"obj-103::obj-26" : 				{
					"parameter_longname" : "counter[6]"
				}
,
				"obj-13::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[88]"
				}
,
				"obj-7::obj-26" : 				{
					"parameter_longname" : "counter[12]"
				}
,
				"obj-25::obj-9" : 				{
					"parameter_longname" : "bar[38]"
				}
,
				"obj-35::obj-67" : 				{
					"parameter_longname" : "toggle[38]"
				}
,
				"obj-46::obj-17" : 				{
					"parameter_longname" : "custom_value[48]"
				}
,
				"obj-42::obj-9" : 				{
					"parameter_longname" : "bar[54]"
				}
,
				"obj-116::obj-73" : 				{
					"parameter_longname" : "initial_value[49]"
				}
,
				"obj-111::obj-67" : 				{
					"parameter_longname" : "toggle[94]"
				}
,
				"obj-94::obj-10" : 				{
					"parameter_longname" : "beat[79]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-88::obj-10" : 				{
					"parameter_longname" : "beat[74]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-83::obj-17" : 				{
					"parameter_longname" : "custom_value[79]"
				}
,
				"obj-78::obj-57" : 				{
					"parameter_longname" : "transportreset[25]"
				}
,
				"obj-77::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[24]"
				}
,
				"obj-63::obj-67" : 				{
					"parameter_longname" : "toggle[65]"
				}
,
				"obj-60::obj-67" : 				{
					"parameter_longname" : "toggle[62]"
				}
,
				"obj-55::obj-67" : 				{
					"parameter_longname" : "toggle[57]"
				}
,
				"obj-51::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[3]"
				}
,
				"obj-101::obj-578" : 				{
					"parameter_longname" : "ramp_time[4]"
				}
,
				"obj-106::obj-57" : 				{
					"parameter_longname" : "transportreset[90]"
				}
,
				"obj-11::obj-57" : 				{
					"parameter_longname" : "transportreset[86]"
				}
,
				"obj-5::obj-9" : 				{
					"parameter_longname" : "bar[20]"
				}
,
				"obj-21::obj-9" : 				{
					"parameter_longname" : "bar[35]"
				}
,
				"obj-15::obj-9" : 				{
					"parameter_longname" : "bar[30]"
				}
,
				"obj-27::obj-9" : 				{
					"parameter_longname" : "bar[40]"
				}
,
				"obj-44::obj-67" : 				{
					"parameter_longname" : "toggle[46]"
				}
,
				"obj-38::obj-17" : 				{
					"parameter_longname" : "custom_value[41]"
				}
,
				"obj-113::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[46]"
				}
,
				"obj-92::obj-26" : 				{
					"parameter_longname" : "counter[87]"
				}
,
				"obj-91::obj-10" : 				{
					"parameter_longname" : "beat[76]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-85::obj-17" : 				{
					"parameter_longname" : "custom_value[81]"
				}
,
				"obj-81::obj-17" : 				{
					"parameter_longname" : "custom_value[77]"
				}
,
				"obj-65::obj-67" : 				{
					"parameter_longname" : "toggle[67]"
				}
,
				"obj-57::obj-55" : 				{
					"parameter_longname" : "counterreset[9]"
				}
,
				"obj-53::obj-578" : 				{
					"parameter_longname" : "ramp_time[55]"
				}
,
				"obj-48::obj-67" : 				{
					"parameter_longname" : "toggle[50]"
				}
,
				"obj-97::obj-57" : 				{
					"parameter_longname" : "transportreset[97]"
				}
,
				"obj-13::obj-10" : 				{
					"parameter_longname" : "beat[8]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-7::obj-55" : 				{
					"parameter_longname" : "counterreset[82]"
				}
,
				"obj-24::obj-9" : 				{
					"parameter_longname" : "bar[37]"
				}
,
				"obj-18::obj-26" : 				{
					"parameter_longname" : "counter[22]"
				}
,
				"obj-35::obj-73" : 				{
					"parameter_longname" : "initial_value[68]"
				}
,
				"obj-30::obj-9" : 				{
					"parameter_longname" : "bar[43]"
				}
,
				"obj-46::obj-9" : 				{
					"parameter_longname" : "bar[58]"
				}
,
				"obj-41::obj-79" : 				{
					"parameter_longname" : "destination_value[43]"
				}
,
				"obj-115::obj-73" : 				{
					"parameter_longname" : "initial_value[48]"
				}
,
				"obj-94::obj-79" : 				{
					"parameter_longname" : "destination_value[89]"
				}
,
				"obj-87::obj-73" : 				{
					"parameter_longname" : "initial_value[33]"
				}
,
				"obj-83::obj-57" : 				{
					"parameter_longname" : "transportreset[29]"
				}
,
				"obj-77::obj-10" : 				{
					"parameter_longname" : "beat[64]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-77::obj-578" : 				{
					"parameter_longname" : "ramp_time[74]"
				}
,
				"obj-67::obj-73" : 				{
					"parameter_longname" : "initial_value[19]"
				}
,
				"obj-59::obj-9" : 				{
					"parameter_longname" : "bar[71]"
				}
,
				"obj-55::obj-57" : 				{
					"parameter_longname" : "transportreset[7]"
				}
,
				"obj-50::obj-9" : 				{
					"parameter_longname" : "bar[62]"
				}
,
				"obj-106::obj-79" : 				{
					"parameter_longname" : "destination_value[9]"
				}
,
				"obj-9::obj-10" : 				{
					"parameter_longname" : "beat[4]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-21::obj-73" : 				{
					"parameter_longname" : "initial_value[75]"
				}
,
				"obj-15::obj-10" : 				{
					"parameter_longname" : "beat[10]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-32::obj-26" : 				{
					"parameter_longname" : "counter[35]"
				}
,
				"obj-27::obj-10" : 				{
					"parameter_longname" : "beat[20]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-43::obj-73" : 				{
					"parameter_longname" : "initial_value[55]"
				}
,
				"obj-38::obj-57" : 				{
					"parameter_longname" : "transportreset[51]"
				}
,
				"obj-113::obj-67" : 				{
					"parameter_longname" : "toggle[96]"
				}
,
				"obj-100::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[41]"
				}
,
				"obj-85::obj-57" : 				{
					"parameter_longname" : "transportreset[31]"
				}
,
				"obj-80::obj-57" : 				{
					"parameter_longname" : "transportreset[26]"
				}
,
				"obj-74::obj-55" : 				{
					"parameter_longname" : "counterreset[21]"
				}
,
				"obj-65::obj-57" : 				{
					"parameter_longname" : "transportreset[17]"
				}
,
				"obj-60::obj-57" : 				{
					"parameter_longname" : "transportreset[12]"
				}
,
				"obj-57::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[9]"
				}
,
				"obj-52::obj-55" : 				{
					"parameter_longname" : "counterreset[4]"
				}
,
				"obj-95::obj-79" : 				{
					"parameter_longname" : "destination_value"
				}
,
				"obj-97::obj-79" : 				{
					"parameter_longname" : "destination_value[2]"
				}
,
				"obj-104::obj-55" : 				{
					"parameter_longname" : "counterreset[92]"
				}
,
				"obj-7::obj-67" : 				{
					"parameter_longname" : "toggle[12]"
				}
,
				"obj-24::obj-55" : 				{
					"parameter_longname" : "counterreset[77]"
				}
,
				"obj-18::obj-55" : 				{
					"parameter_longname" : "counterreset[72]"
				}
,
				"obj-34::obj-578" : 				{
					"parameter_longname" : "ramp_time[37]"
				}
,
				"obj-30::obj-10" : 				{
					"parameter_longname" : "beat[23]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-41::obj-9" : 				{
					"parameter_longname" : "bar[53]"
				}
,
				"obj-115::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[48]"
				}
,
				"obj-110::obj-55" : 				{
					"parameter_longname" : "counterreset[43]"
				}
,
				"obj-94::obj-57" : 				{
					"parameter_longname" : "transportreset[39]"
				}
,
				"obj-87::obj-17" : 				{
					"parameter_longname" : "custom_value[83]"
				}
,
				"obj-76::obj-79" : 				{
					"parameter_longname" : "destination_value[73]"
				}
,
				"obj-67::obj-57" : 				{
					"parameter_longname" : "transportreset[19]"
				}
,
				"obj-62::obj-57" : 				{
					"parameter_longname" : "transportreset[14]"
				}
,
				"obj-59::obj-17" : 				{
					"parameter_longname" : "custom_value[61]"
				}
,
				"obj-50::obj-79" : 				{
					"parameter_longname" : "destination_value[52]"
				}
,
				"obj-102::obj-26" : 				{
					"parameter_longname" : "counter[5]"
				}
,
				"obj-106::obj-17" : 				{
					"parameter_longname" : "custom_value[9]"
				}
,
				"obj-9::obj-26" : 				{
					"parameter_longname" : "counter[14]"
				}
,
				"obj-26::obj-57" : 				{
					"parameter_longname" : "transportreset[79]"
				}
,
				"obj-36::obj-55" : 				{
					"parameter_longname" : "counterreset[69]"
				}
,
				"obj-32::obj-55" : 				{
					"parameter_longname" : "counterreset[65]"
				}
,
				"obj-43::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[55]"
				}
,
				"obj-112::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[45]"
				}
,
				"obj-100::obj-17" : 				{
					"parameter_longname" : "custom_value[91]"
				}
,
				"obj-89::obj-26" : 				{
					"parameter_longname" : "counter[85]"
				}
,
				"obj-80::obj-10" : 				{
					"parameter_longname" : "beat[66]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-74::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[21]"
				}
,
				"obj-64::obj-9" : 				{
					"parameter_longname" : "bar[76]"
				}
,
				"obj-52::obj-17" : 				{
					"parameter_longname" : "custom_value[54]"
				}
,
				"obj-98::obj-578" : 				{
					"parameter_longname" : "ramp_time[3]"
				}
,
				"obj-104::obj-67" : 				{
					"parameter_longname" : "toggle[7]"
				}
,
				"obj-12::obj-26" : 				{
					"parameter_longname" : "counter[17]"
				}
,
				"obj-11::obj-9" : 				{
					"parameter_longname" : "bar[26]"
				}
,
				"obj-6::obj-67" : 				{
					"parameter_longname" : "toggle[11]"
				}
,
				"obj-24::obj-26" : 				{
					"parameter_longname" : "counter[27]"
				}
,
				"obj-17::obj-57" : 				{
					"parameter_longname" : "transportreset[71]"
				}
,
				"obj-34::obj-57" : 				{
					"parameter_longname" : "transportreset[67]"
				}
,
				"obj-29::obj-55" : 				{
					"parameter_longname" : "counterreset[62]"
				}
,
				"obj-45::obj-67" : 				{
					"parameter_longname" : "toggle[47]"
				}
,
				"obj-114::obj-578" : 				{
					"parameter_longname" : "ramp_time[97]"
				}
,
				"obj-110::obj-57" : 				{
					"parameter_longname" : "transportreset[43]"
				}
,
				"obj-93::obj-10" : 				{
					"parameter_longname" : "beat[78]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-87::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[33]"
				}
,
				"obj-82::obj-57" : 				{
					"parameter_longname" : "transportreset[28]"
				}
,
				"obj-76::obj-26" : 				{
					"parameter_longname" : "counter[73]"
				}
,
				"obj-66::obj-9" : 				{
					"parameter_longname" : "bar[78]"
				}
,
				"obj-62::obj-79" : 				{
					"parameter_longname" : "destination_value[64]"
				}
,
				"obj-59::obj-67" : 				{
					"parameter_longname" : "toggle[61]"
				}
,
				"obj-54::obj-10" : 				{
					"parameter_longname" : "beat[46]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-102::obj-55" : 				{
					"parameter_longname" : "counterreset[94]"
				}
,
				"obj-14::obj-67" : 				{
					"parameter_longname" : "toggle[19]"
				}
,
				"obj-8::obj-79" : 				{
					"parameter_longname" : "destination_value[13]"
				}
,
				"obj-26::obj-79" : 				{
					"parameter_longname" : "destination_value[29]"
				}
,
				"obj-20::obj-55" : 				{
					"parameter_longname" : "counterreset[74]"
				}
,
				"obj-36::obj-67" : 				{
					"parameter_longname" : "toggle[39]"
				}
,
				"obj-31::obj-55" : 				{
					"parameter_longname" : "counterreset[64]"
				}
,
				"obj-47::obj-26" : 				{
					"parameter_longname" : "counter[49]"
				}
,
				"obj-43::obj-578" : 				{
					"parameter_longname" : "ramp_time[45]"
				}
,
				"obj-37::obj-79" : 				{
					"parameter_longname" : "destination_value[40]"
				}
,
				"obj-112::obj-578" : 				{
					"parameter_longname" : "ramp_time[95]"
				}
,
				"obj-99::obj-578" : 				{
					"parameter_longname" : "ramp_time[90]"
				}
,
				"obj-89::obj-55" : 				{
					"parameter_longname" : "counterreset[35]"
				}
,
				"obj-84::obj-9" : 				{
					"parameter_longname" : "bar[90]"
				}
,
				"obj-80::obj-67" : 				{
					"parameter_longname" : "toggle[76]"
				}
,
				"obj-71::obj-67" : 				{
					"parameter_longname" : "toggle[70]"
				}
,
				"obj-64::obj-57" : 				{
					"parameter_longname" : "transportreset[16]"
				}
,
				"obj-56::obj-73" : 				{
					"parameter_longname" : "initial_value[8]"
				}
,
				"obj-52::obj-67" : 				{
					"parameter_longname" : "toggle[54]"
				}
,
				"obj-98::obj-57" : 				{
					"parameter_longname" : "transportreset[96]"
				}
,
				"obj-105::obj-67" : 				{
					"parameter_longname" : "toggle[8]"
				}
,
				"obj-12::obj-17" : 				{
					"parameter_longname" : "custom_value[17]"
				}
,
				"obj-10::obj-73" : 				{
					"parameter_longname" : "initial_value[85]"
				}
,
				"obj-6::obj-73" : 				{
					"parameter_longname" : "initial_value[81]"
				}
,
				"obj-23::obj-79" : 				{
					"parameter_longname" : "destination_value[26]"
				}
,
				"obj-17::obj-79" : 				{
					"parameter_longname" : "destination_value[21]"
				}
,
				"obj-29::obj-67" : 				{
					"parameter_longname" : "toggle[32]"
				}
,
				"obj-45::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[57]"
				}
,
				"obj-40::obj-9" : 				{
					"parameter_longname" : "bar[52]"
				}
,
				"obj-114::obj-10" : 				{
					"parameter_longname" : "beat[87]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-108::obj-17" : 				{
					"parameter_longname" : "custom_value[92]"
				}
,
				"obj-93::obj-57" : 				{
					"parameter_longname" : "transportreset[38]"
				}
,
				"obj-86::obj-10" : 				{
					"parameter_longname" : "beat[72]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-82::obj-10" : 				{
					"parameter_longname" : "beat[68]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-66::obj-79" : 				{
					"parameter_longname" : "destination_value[68]"
				}
,
				"obj-61::obj-9" : 				{
					"parameter_longname" : "bar[73]"
				}
,
				"obj-58::obj-17" : 				{
					"parameter_longname" : "custom_value[60]"
				}
,
				"obj-54::obj-67" : 				{
					"parameter_longname" : "toggle[56]"
				}
,
				"obj-49::obj-55" : 				{
					"parameter_longname" : "counterreset[1]"
				}
,
				"obj-95::obj-10" : 				{
					"parameter_longname" : "bar[1]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-96::obj-578" : 				{
					"parameter_longname" : "ramp_time[1]"
				}
,
				"obj-103::obj-73" : 				{
					"parameter_longname" : "initial_value[93]"
				}
,
				"obj-14::obj-73" : 				{
					"parameter_longname" : "initial_value[89]"
				}
,
				"obj-8::obj-17" : 				{
					"parameter_longname" : "custom_value[13]"
				}
,
				"obj-25::obj-55" : 				{
					"parameter_longname" : "counterreset[78]"
				}
,
				"obj-20::obj-9" : 				{
					"parameter_longname" : "bar[34]"
				}
,
				"obj-19::obj-578" : 				{
					"parameter_longname" : "ramp_time[23]"
				}
,
				"obj-31::obj-57" : 				{
					"parameter_longname" : "transportreset[64]"
				}
,
				"obj-47::obj-55" : 				{
					"parameter_longname" : "counterreset[59]"
				}
,
				"obj-42::obj-17" : 				{
					"parameter_longname" : "custom_value[44]"
				}
,
				"obj-37::obj-9" : 				{
					"parameter_longname" : "bar[50]"
				}
,
				"obj-99::obj-17" : 				{
					"parameter_longname" : "custom_value[90]"
				}
,
				"obj-88::obj-26" : 				{
					"parameter_longname" : "counter[84]"
				}
,
				"obj-84::obj-73" : 				{
					"parameter_longname" : "initial_value[30]"
				}
,
				"obj-78::obj-73" : 				{
					"parameter_longname" : "initial_value[25]"
				}
,
				"obj-71::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[20]"
				}
,
				"obj-56::obj-79" : 				{
					"parameter_longname" : "destination_value[58]"
				}
,
				"obj-51::obj-79" : 				{
					"parameter_longname" : "destination_value[53]"
				}
,
				"obj-105::obj-73" : 				{
					"parameter_longname" : "initial_value[91]"
				}
,
				"obj-11::obj-10" : 				{
					"parameter_longname" : "beat[6]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-10::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[85]"
				}
,
				"obj-23::obj-17" : 				{
					"parameter_longname" : "custom_value[26]"
				}
,
				"obj-17::obj-17" : 				{
					"parameter_longname" : "custom_value[21]"
				}
,
				"obj-33::obj-9" : 				{
					"parameter_longname" : "bar[46]"
				}
,
				"obj-28::obj-57" : 				{
					"parameter_longname" : "transportreset[61]"
				}
,
				"obj-44::obj-578" : 				{
					"parameter_longname" : "ramp_time[46]"
				}
,
				"obj-40::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[52]"
				}
,
				"obj-108::obj-55" : 				{
					"parameter_longname" : "counterreset[42]"
				}
,
				"obj-91::obj-55" : 				{
					"parameter_longname" : "counterreset[36]"
				}
,
				"obj-86::obj-57" : 				{
					"parameter_longname" : "transportreset[32]"
				}
,
				"obj-81::obj-67" : 				{
					"parameter_longname" : "toggle[77]"
				}
,
				"obj-75::obj-67" : 				{
					"parameter_longname" : "toggle[72]"
				}
,
				"obj-61::obj-26" : 				{
					"parameter_longname" : "counter[63]"
				}
,
				"obj-58::obj-57" : 				{
					"parameter_longname" : "transportreset[10]"
				}
,
				"obj-53::obj-10" : 				{
					"parameter_longname" : "beat[45]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-49::obj-57" : 				{
					"parameter_longname" : "transportreset[1]"
				}
,
				"obj-96::obj-57" : 				{
					"parameter_longname" : "transportreset[98]"
				}
,
				"obj-103::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[93]"
				}
,
				"obj-25::obj-67" : 				{
					"parameter_longname" : "toggle[28]"
				}
,
				"obj-19::obj-55" : 				{
					"parameter_longname" : "counterreset[73]"
				}
,
				"obj-35::obj-57" : 				{
					"parameter_longname" : "transportreset[68]"
				}
,
				"obj-31::obj-73" : 				{
					"parameter_longname" : "initial_value[64]"
				}
,
				"obj-46::obj-55" : 				{
					"parameter_longname" : "counterreset[58]"
				}
,
				"obj-42::obj-57" : 				{
					"parameter_longname" : "transportreset[54]"
				}
,
				"obj-116::obj-57" : 				{
					"parameter_longname" : "transportreset[49]"
				}
,
				"obj-116::obj-9" : 				{
					"parameter_longname" : "bar[109]"
				}
,
				"obj-111::obj-9" : 				{
					"parameter_longname" : "bar[104]"
				}
,
				"obj-88::obj-17" : 				{
					"parameter_longname" : "custom_value[84]"
				}
,
				"obj-83::obj-73" : 				{
					"parameter_longname" : "initial_value[29]"
				}
,
				"obj-78::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[25]"
				}
,
				"obj-77::obj-55" : 				{
					"parameter_longname" : "counterreset[24]"
				}
,
				"obj-71::obj-17" : 				{
					"parameter_longname" : "custom_value[70]"
				}
,
				"obj-63::obj-73" : 				{
					"parameter_longname" : "initial_value[15]"
				}
,
				"obj-55::obj-79" : 				{
					"parameter_longname" : "destination_value[57]"
				}
,
				"obj-51::obj-17" : 				{
					"parameter_longname" : "custom_value[53]"
				}
,
				"obj-101::obj-9" : 				{
					"parameter_longname" : "bar[8]"
				}
,
				"obj-11::obj-67" : 				{
					"parameter_longname" : "toggle[16]"
				}
,
				"obj-10::obj-578" : 				{
					"parameter_longname" : "ramp_time[15]"
				}
,
				"obj-5::obj-67" : 				{
					"parameter_longname" : "toggle[10]"
				}
,
				"obj-15::obj-67" : 				{
					"parameter_longname" : "toggle[20]"
				}
,
				"obj-33::obj-10" : 				{
					"parameter_longname" : "beat[26]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-28::obj-73" : 				{
					"parameter_longname" : "initial_value[61]"
				}
,
				"obj-44::obj-79" : 				{
					"parameter_longname" : "destination_value[46]"
				}
,
				"obj-38::obj-73" : 				{
					"parameter_longname" : "initial_value[51]"
				}
,
				"obj-113::obj-55" : 				{
					"parameter_longname" : "counterreset[46]"
				}
,
				"obj-108::obj-9" : 				{
					"parameter_longname" : "bar[102]"
				}
,
				"obj-92::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[37]"
				}
,
				"obj-91::obj-9" : 				{
					"parameter_longname" : "bar[96]"
				}
,
				"obj-81::obj-73" : 				{
					"parameter_longname" : "initial_value[27]"
				}
,
				"obj-75::obj-578" : 				{
					"parameter_longname" : "ramp_time[72]"
				}
,
				"obj-65::obj-79" : 				{
					"parameter_longname" : "destination_value[67]"
				}
,
				"obj-61::obj-67" : 				{
					"parameter_longname" : "toggle[63]"
				}
,
				"obj-53::obj-55" : 				{
					"parameter_longname" : "counterreset[5]"
				}
,
				"obj-48::obj-9" : 				{
					"parameter_longname" : "bar[60]"
				}
,
				"obj-97::obj-17" : 				{
					"parameter_longname" : "custom_value[2]"
				}
,
				"obj-103::obj-578" : 				{
					"parameter_longname" : "ramp_time[6]"
				}
,
				"obj-13::obj-79" : 				{
					"parameter_longname" : "destination_value[18]"
				}
,
				"obj-7::obj-578" : 				{
					"parameter_longname" : "ramp_time[12]"
				}
,
				"obj-5::obj-10" : 				{
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-18::obj-57" : 				{
					"parameter_longname" : "transportreset[72]"
				}
,
				"obj-35::obj-79" : 				{
					"parameter_longname" : "destination_value[38]"
				}
,
				"obj-30::obj-67" : 				{
					"parameter_longname" : "toggle[33]"
				}
,
				"obj-46::obj-67" : 				{
					"parameter_longname" : "toggle[48]"
				}
,
				"obj-116::obj-55" : 				{
					"parameter_longname" : "counterreset[49]"
				}
,
				"obj-115::obj-9" : 				{
					"parameter_longname" : "bar[108]"
				}
,
				"obj-111::obj-17" : 				{
					"parameter_longname" : "custom_value[94]"
				}
,
				"obj-94::obj-17" : 				{
					"parameter_longname" : "custom_value[89]"
				}
,
				"obj-83::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[29]"
				}
,
				"obj-77::obj-26" : 				{
					"parameter_longname" : "counter[74]"
				}
,
				"obj-67::obj-10" : 				{
					"parameter_longname" : "beat[59]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-63::obj-17" : 				{
					"parameter_longname" : "custom_value[65]"
				}
,
				"obj-55::obj-578" : 				{
					"parameter_longname" : "ramp_time[57]"
				}
,
				"obj-101::obj-10" : 				{
					"parameter_longname" : "bar[9]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-106::obj-26" : 				{
					"parameter_longname" : "counter[9]"
				}
,
				"obj-9::obj-79" : 				{
					"parameter_longname" : "destination_value[14]"
				}
,
				"obj-5::obj-73" : 				{
					"parameter_longname" : "initial_value[80]"
				}
,
				"obj-21::obj-79" : 				{
					"parameter_longname" : "destination_value[25]"
				}
,
				"obj-15::obj-73" : 				{
					"parameter_longname" : "initial_value[70]"
				}
,
				"obj-32::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[65]"
				}
,
				"obj-27::obj-73" : 				{
					"parameter_longname" : "initial_value[60]"
				}
,
				"obj-38::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[51]"
				}
,
				"obj-113::obj-9" : 				{
					"parameter_longname" : "bar[106]"
				}
,
				"obj-100::obj-67" : 				{
					"parameter_longname" : "toggle[91]"
				}
,
				"obj-92::obj-79" : 				{
					"parameter_longname" : "destination_value[87]"
				}
,
				"obj-91::obj-79" : 				{
					"parameter_longname" : "destination_value[86]"
				}
,
				"obj-85::obj-55" : 				{
					"parameter_longname" : "counterreset[31]"
				}
,
				"obj-74::obj-26" : 				{
					"parameter_longname" : "counter[71]"
				}
,
				"obj-65::obj-578" : 				{
					"parameter_longname" : "ramp_time[67]"
				}
,
				"obj-60::obj-79" : 				{
					"parameter_longname" : "destination_value[62]"
				}
,
				"obj-57::obj-9" : 				{
					"parameter_longname" : "bar[69]"
				}
,
				"obj-48::obj-17" : 				{
					"parameter_longname" : "custom_value[50]"
				}
,
				"obj-97::obj-26" : 				{
					"parameter_longname" : "counter[2]"
				}
,
				"obj-104::obj-578" : 				{
					"parameter_longname" : "ramp_time[7]"
				}
,
				"obj-13::obj-26" : 				{
					"parameter_longname" : "counter[18]"
				}
,
				"obj-7::obj-57" : 				{
					"parameter_longname" : "transportreset[82]"
				}
,
				"obj-24::obj-10" : 				{
					"parameter_longname" : "beat[17]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-18::obj-73" : 				{
					"parameter_longname" : "initial_value[72]"
				}
,
				"obj-34::obj-9" : 				{
					"parameter_longname" : "bar[47]"
				}
,
				"obj-30::obj-73" : 				{
					"parameter_longname" : "initial_value[63]"
				}
,
				"obj-46::obj-73" : 				{
					"parameter_longname" : "initial_value[58]"
				}
,
				"obj-41::obj-57" : 				{
					"parameter_longname" : "transportreset[53]"
				}
,
				"obj-115::obj-55" : 				{
					"parameter_longname" : "counterreset[48]"
				}
,
				"obj-110::obj-17" : 				{
					"parameter_longname" : "custom_value[93]"
				}
,
				"obj-94::obj-9" : 				{
					"parameter_longname" : "bar[99]"
				}
,
				"obj-87::obj-578" : 				{
					"parameter_longname" : "ramp_time[83]"
				}
,
				"obj-83::obj-578" : 				{
					"parameter_longname" : "ramp_time[79]"
				}
,
				"obj-76::obj-55" : 				{
					"parameter_longname" : "counterreset[23]"
				}
,
				"obj-67::obj-26" : 				{
					"parameter_longname" : "counter[69]"
				}
,
				"obj-62::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[14]"
				}
,
				"obj-59::obj-55" : 				{
					"parameter_longname" : "counterreset[11]"
				}
,
				"obj-55::obj-26" : 				{
					"parameter_longname" : "counter[57]"
				}
,
				"obj-50::obj-57" : 				{
					"parameter_longname" : "transportreset[2]"
				}
,
				"obj-102::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[94]"
				}
,
				"obj-106::obj-55" : 				{
					"parameter_longname" : "counterreset[90]"
				}
,
				"obj-9::obj-55" : 				{
					"parameter_longname" : "counterreset[84]"
				}
,
				"obj-26::obj-10" : 				{
					"parameter_longname" : "beat[19]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-21::obj-10" : 				{
					"parameter_longname" : "beat[15]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-32::obj-578" : 				{
					"parameter_longname" : "ramp_time[35]"
				}
,
				"obj-27::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[60]"
				}
,
				"obj-43::obj-55" : 				{
					"parameter_longname" : "counterreset[55]"
				}
,
				"obj-38::obj-578" : 				{
					"parameter_longname" : "ramp_time[41]"
				}
,
				"obj-112::obj-55" : 				{
					"parameter_longname" : "counterreset[45]"
				}
,
				"obj-100::obj-26" : 				{
					"parameter_longname" : "counter[91]"
				}
,
				"obj-89::obj-9" : 				{
					"parameter_longname" : "bar[95]"
				}
,
				"obj-85::obj-578" : 				{
					"parameter_longname" : "ramp_time[81]"
				}
,
				"obj-80::obj-578" : 				{
					"parameter_longname" : "ramp_time[76]"
				}
,
				"obj-74::obj-9" : 				{
					"parameter_longname" : "bar[81]"
				}
,
				"obj-64::obj-10" : 				{
					"parameter_longname" : "beat[56]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-57::obj-17" : 				{
					"parameter_longname" : "custom_value[59]"
				}
,
				"obj-52::obj-57" : 				{
					"parameter_longname" : "transportreset[4]"
				}
,
				"obj-98::obj-9" : 				{
					"parameter_longname" : "bar[6]"
				}
,
				"obj-104::obj-57" : 				{
					"parameter_longname" : "transportreset[92]"
				}
,
				"obj-12::obj-67" : 				{
					"parameter_longname" : "toggle[17]"
				}
,
				"obj-6::obj-57" : 				{
					"parameter_longname" : "transportreset[81]"
				}
,
				"obj-24::obj-67" : 				{
					"parameter_longname" : "toggle[27]"
				}
,
				"obj-34::obj-10" : 				{
					"parameter_longname" : "beat[27]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-45::obj-9" : 				{
					"parameter_longname" : "bar[57]"
				}
,
				"obj-41::obj-10" : 				{
					"parameter_longname" : "beat[33]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-110::obj-10" : 				{
					"parameter_longname" : "beat[83]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-93::obj-578" : 				{
					"parameter_longname" : "ramp_time[88]"
				}
,
				"obj-87::obj-79" : 				{
					"parameter_longname" : "destination_value[83]"
				}
,
				"obj-82::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[28]"
				}
,
				"obj-76::obj-57" : 				{
					"parameter_longname" : "transportreset[23]"
				}
,
				"obj-62::obj-17" : 				{
					"parameter_longname" : "custom_value[64]"
				}
,
				"obj-59::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[11]"
				}
,
				"obj-54::obj-17" : 				{
					"parameter_longname" : "custom_value[56]"
				}
,
				"obj-50::obj-578" : 				{
					"parameter_longname" : "ramp_time[52]"
				}
,
				"obj-102::obj-578" : 				{
					"parameter_longname" : "ramp_time[5]"
				}
,
				"obj-14::obj-57" : 				{
					"parameter_longname" : "transportreset[89]"
				}
,
				"obj-26::obj-26" : 				{
					"parameter_longname" : "counter[29]"
				}
,
				"obj-20::obj-578" : 				{
					"parameter_longname" : "ramp_time[24]"
				}
,
				"obj-36::obj-57" : 				{
					"parameter_longname" : "transportreset[69]"
				}
,
				"obj-47::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[59]"
				}
,
				"obj-43::obj-26" : 				{
					"parameter_longname" : "counter[45]"
				}
,
				"obj-37::obj-17" : 				{
					"parameter_longname" : "custom_value[40]"
				}
,
				"obj-112::obj-26" : 				{
					"parameter_longname" : "counter[95]"
				}
,
				"obj-89::obj-79" : 				{
					"parameter_longname" : "destination_value[85]"
				}
,
				"obj-84::obj-57" : 				{
					"parameter_longname" : "transportreset[30]"
				}
,
				"obj-80::obj-79" : 				{
					"parameter_longname" : "destination_value[76]"
				}
,
				"obj-64::obj-67" : 				{
					"parameter_longname" : "toggle[66]"
				}
,
				"obj-56::obj-9" : 				{
					"parameter_longname" : "bar[68]"
				}
,
				"obj-52::obj-10" : 				{
					"parameter_longname" : "beat[44]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-98::obj-10" : 				{
					"parameter_longname" : "bar[7]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-12::obj-73" : 				{
					"parameter_longname" : "initial_value[87]"
				}
,
				"obj-6::obj-79" : 				{
					"parameter_longname" : "destination_value[11]"
				}
,
				"obj-23::obj-26" : 				{
					"parameter_longname" : "counter[26]"
				}
,
				"obj-17::obj-26" : 				{
					"parameter_longname" : "counter[21]"
				}
,
				"obj-34::obj-26" : 				{
					"parameter_longname" : "counter[37]"
				}
,
				"obj-29::obj-57" : 				{
					"parameter_longname" : "transportreset[62]"
				}
,
				"obj-45::obj-55" : 				{
					"parameter_longname" : "counterreset[57]"
				}
,
				"obj-40::obj-26" : 				{
					"parameter_longname" : "counter[42]"
				}
,
				"obj-114::obj-17" : 				{
					"parameter_longname" : "custom_value[97]"
				}
,
				"obj-93::obj-17" : 				{
					"parameter_longname" : "custom_value[88]"
				}
,
				"obj-86::obj-578" : 				{
					"parameter_longname" : "ramp_time[82]"
				}
,
				"obj-82::obj-578" : 				{
					"parameter_longname" : "ramp_time[78]"
				}
,
				"obj-76::obj-17" : 				{
					"parameter_longname" : "custom_value[73]"
				}
,
				"obj-66::obj-10" : 				{
					"parameter_longname" : "beat[58]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-58::obj-73" : 				{
					"parameter_longname" : "initial_value[10]"
				}
,
				"obj-54::obj-578" : 				{
					"parameter_longname" : "ramp_time[56]"
				}
,
				"obj-49::obj-73" : 				{
					"parameter_longname" : "initial_value[1]"
				}
,
				"obj-95::obj-73" : 				{
					"parameter_longname" : "initial_value[99]"
				}
,
				"obj-96::obj-9" : 				{
					"parameter_longname" : "bar[2]"
				}
,
				"obj-14::obj-79" : 				{
					"parameter_longname" : "destination_value[19]"
				}
,
				"obj-8::obj-55" : 				{
					"parameter_longname" : "counterreset[83]"
				}
,
				"obj-20::obj-57" : 				{
					"parameter_longname" : "transportreset[74]"
				}
,
				"obj-19::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[73]"
				}
,
				"obj-36::obj-79" : 				{
					"parameter_longname" : "destination_value[39]"
				}
,
				"obj-31::obj-67" : 				{
					"parameter_longname" : "toggle[34]"
				}
,
				"obj-47::obj-578" : 				{
					"parameter_longname" : "ramp_time[49]"
				}
,
				"obj-42::obj-73" : 				{
					"parameter_longname" : "initial_value[54]"
				}
,
				"obj-37::obj-57" : 				{
					"parameter_longname" : "transportreset[50]"
				}
,
				"obj-112::obj-17" : 				{
					"parameter_longname" : "custom_value[95]"
				}
,
				"obj-99::obj-26" : 				{
					"parameter_longname" : "counter[90]"
				}
,
				"obj-84::obj-10" : 				{
					"parameter_longname" : "beat[70]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-78::obj-9" : 				{
					"parameter_longname" : "bar[85]"
				}
,
				"obj-71::obj-57" : 				{
					"parameter_longname" : "transportreset[20]"
				}
,
				"obj-64::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[16]"
				}
,
				"obj-56::obj-55" : 				{
					"parameter_longname" : "counterreset[8]"
				}
,
				"obj-51::obj-57" : 				{
					"parameter_longname" : "transportreset[3]"
				}
,
				"obj-98::obj-26" : 				{
					"parameter_longname" : "counter[3]"
				}
,
				"obj-105::obj-79" : 				{
					"parameter_longname" : "destination_value[8]"
				}
,
				"obj-10::obj-17" : 				{
					"parameter_longname" : "custom_value[15]"
				}
,
				"obj-6::obj-17" : 				{
					"parameter_longname" : "custom_value[11]"
				}
,
				"obj-23::obj-55" : 				{
					"parameter_longname" : "counterreset[76]"
				}
,
				"obj-17::obj-55" : 				{
					"parameter_longname" : "counterreset[71]"
				}
,
				"obj-33::obj-67" : 				{
					"parameter_longname" : "toggle[36]"
				}
,
				"obj-29::obj-79" : 				{
					"parameter_longname" : "destination_value[32]"
				}
,
				"obj-28::obj-10" : 				{
					"parameter_longname" : "beat[21]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-40::obj-10" : 				{
					"parameter_longname" : "beat[32]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-114::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[47]"
				}
,
				"obj-108::obj-67" : 				{
					"parameter_longname" : "toggle[92]"
				}
,
				"obj-93::obj-9" : 				{
					"parameter_longname" : "bar[98]"
				}
,
				"obj-86::obj-79" : 				{
					"parameter_longname" : "destination_value[82]"
				}
,
				"obj-75::obj-17" : 				{
					"parameter_longname" : "custom_value[72]"
				}
,
				"obj-66::obj-73" : 				{
					"parameter_longname" : "initial_value[18]"
				}
,
				"obj-61::obj-55" : 				{
					"parameter_longname" : "counterreset[13]"
				}
,
				"obj-58::obj-79" : 				{
					"parameter_longname" : "destination_value[60]"
				}
,
				"obj-49::obj-79" : 				{
					"parameter_longname" : "destination_value[51]"
				}
,
				"obj-96::obj-10" : 				{
					"parameter_longname" : "bar[3]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-103::obj-17" : 				{
					"parameter_longname" : "custom_value[6]"
				}
,
				"obj-14::obj-17" : 				{
					"parameter_longname" : "custom_value[19]"
				}
,
				"obj-8::obj-67" : 				{
					"parameter_longname" : "toggle[13]"
				}
,
				"obj-25::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[78]"
				}
,
				"obj-19::obj-10" : 				{
					"parameter_longname" : "beat[13]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-35::obj-10" : 				{
					"parameter_longname" : "beat[28]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-31::obj-578" : 				{
					"parameter_longname" : "ramp_time[34]"
				}
,
				"obj-42::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[54]"
				}
,
				"obj-116::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[49]"
				}
,
				"obj-111::obj-73" : 				{
					"parameter_longname" : "initial_value[44]"
				}
,
				"obj-99::obj-67" : 				{
					"parameter_longname" : "toggle[90]"
				}
,
				"obj-88::obj-73" : 				{
					"parameter_longname" : "initial_value[34]"
				}
,
				"obj-78::obj-55" : 				{
					"parameter_longname" : "counterreset[25]"
				}
,
				"obj-71::obj-79" : 				{
					"parameter_longname" : "destination_value[70]"
				}
,
				"obj-63::obj-26" : 				{
					"parameter_longname" : "counter[65]"
				}
,
				"obj-51::obj-10" : 				{
					"parameter_longname" : "beat[43]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-101::obj-67" : 				{
					"parameter_longname" : "toggle[4]"
				}
,
				"obj-105::obj-17" : 				{
					"parameter_longname" : "custom_value[8]"
				}
,
				"obj-11::obj-73" : 				{
					"parameter_longname" : "initial_value[86]"
				}
,
				"obj-10::obj-9" : 				{
					"parameter_longname" : "bar[25]"
				}
,
				"obj-5::obj-57" : 				{
					"parameter_longname" : "transportreset[80]"
				}
,
				"obj-23::obj-67" : 				{
					"parameter_longname" : "toggle[26]"
				}
,
				"obj-15::obj-57" : 				{
					"parameter_longname" : "transportreset[70]"
				}
,
				"obj-33::obj-73" : 				{
					"parameter_longname" : "initial_value[66]"
				}
,
				"obj-28::obj-79" : 				{
					"parameter_longname" : "destination_value[31]"
				}
,
				"obj-28::obj-26" : 				{
					"parameter_longname" : "counter[31]"
				}
,
				"obj-44::obj-17" : 				{
					"parameter_longname" : "custom_value[46]"
				}
,
				"obj-113::obj-10" : 				{
					"parameter_longname" : "beat[86]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-108::obj-26" : 				{
					"parameter_longname" : "counter[92]"
				}
,
				"obj-92::obj-578" : 				{
					"parameter_longname" : "ramp_time[87]"
				}
,
				"obj-91::obj-26" : 				{
					"parameter_longname" : "counter[86]"
				}
,
				"obj-86::obj-9" : 				{
					"parameter_longname" : "bar[92]"
				}
,
				"obj-81::obj-9" : 				{
					"parameter_longname" : "bar[87]"
				}
,
				"obj-75::obj-55" : 				{
					"parameter_longname" : "counterreset[22]"
				}
,
				"obj-65::obj-17" : 				{
					"parameter_longname" : "custom_value[67]"
				}
,
				"obj-61::obj-57" : 				{
					"parameter_longname" : "transportreset[13]"
				}
,
				"obj-58::obj-67" : 				{
					"parameter_longname" : "toggle[60]"
				}
,
				"obj-53::obj-26" : 				{
					"parameter_longname" : "counter[55]"
				}
,
				"obj-96::obj-26" : 				{
					"parameter_longname" : "counter[1]"
				}
,
				"obj-97::obj-55" : 				{
					"parameter_longname" : "counterreset[97]"
				}
,
				"obj-103::obj-9" : 				{
					"parameter_longname" : "bar[12]"
				}
,
				"obj-13::obj-57" : 				{
					"parameter_longname" : "transportreset[88]"
				}
,
				"obj-7::obj-9" : 				{
					"parameter_longname" : "bar[22]"
				}
,
				"obj-25::obj-79" : 				{
					"parameter_longname" : "destination_value[28]"
				}
,
				"obj-35::obj-26" : 				{
					"parameter_longname" : "counter[38]"
				}
,
				"obj-30::obj-57" : 				{
					"parameter_longname" : "transportreset[63]"
				}
,
				"obj-46::obj-57" : 				{
					"parameter_longname" : "transportreset[58]"
				}
,
				"obj-42::obj-578" : 				{
					"parameter_longname" : "ramp_time[44]"
				}
,
				"obj-116::obj-10" : 				{
					"parameter_longname" : "beat[89]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-115::obj-57" : 				{
					"parameter_longname" : "transportreset[48]"
				}
,
				"obj-111::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[44]"
				}
,
				"obj-94::obj-67" : 				{
					"parameter_longname" : "toggle[89]"
				}
,
				"obj-88::obj-79" : 				{
					"parameter_longname" : "destination_value[84]"
				}
,
				"obj-83::obj-55" : 				{
					"parameter_longname" : "counterreset[29]"
				}
,
				"obj-78::obj-26" : 				{
					"parameter_longname" : "counter[75]"
				}
,
				"obj-77::obj-67" : 				{
					"parameter_longname" : "toggle[74]"
				}
,
				"obj-67::obj-17" : 				{
					"parameter_longname" : "custom_value[69]"
				}
,
				"obj-63::obj-9" : 				{
					"parameter_longname" : "bar[75]"
				}
,
				"obj-60::obj-17" : 				{
					"parameter_longname" : "custom_value[62]"
				}
,
				"obj-55::obj-55" : 				{
					"parameter_longname" : "counterreset[7]"
				}
,
				"obj-51::obj-26" : 				{
					"parameter_longname" : "counter[53]"
				}
,
				"obj-101::obj-73" : 				{
					"parameter_longname" : "initial_value[95]"
				}
,
				"obj-106::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[90]"
				}
,
				"obj-9::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[84]"
				}
,
				"obj-5::obj-79" : 				{
					"parameter_longname" : "destination_value[10]"
				}
,
				"obj-21::obj-67" : 				{
					"parameter_longname" : "toggle[25]"
				}
,
				"obj-15::obj-79" : 				{
					"parameter_longname" : "destination_value[20]"
				}
,
				"obj-27::obj-79" : 				{
					"parameter_longname" : "destination_value[30]"
				}
,
				"obj-44::obj-57" : 				{
					"parameter_longname" : "transportreset[56]"
				}
,
				"obj-38::obj-55" : 				{
					"parameter_longname" : "counterreset[51]"
				}
,
				"obj-113::obj-57" : 				{
					"parameter_longname" : "transportreset[46]"
				}
,
				"obj-100::obj-55" : 				{
					"parameter_longname" : "counterreset[41]"
				}
,
				"obj-92::obj-17" : 				{
					"parameter_longname" : "custom_value[87]"
				}
,
				"obj-91::obj-17" : 				{
					"parameter_longname" : "custom_value[86]"
				}
,
				"obj-85::obj-73" : 				{
					"parameter_longname" : "initial_value[31]"
				}
,
				"obj-81::obj-55" : 				{
					"parameter_longname" : "counterreset[27]"
				}
,
				"obj-65::obj-26" : 				{
					"parameter_longname" : "counter[67]"
				}
,
				"obj-60::obj-578" : 				{
					"parameter_longname" : "ramp_time[62]"
				}
,
				"obj-57::obj-67" : 				{
					"parameter_longname" : "toggle[59]"
				}
,
				"obj-53::obj-73" : 				{
					"parameter_longname" : "initial_value[5]"
				}
,
				"obj-48::obj-26" : 				{
					"parameter_longname" : "counter[50]"
				}
,
				"obj-97::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[97]"
				}
,
				"obj-104::obj-9" : 				{
					"parameter_longname" : "bar[14]"
				}
,
				"obj-13::obj-17" : 				{
					"parameter_longname" : "custom_value[18]"
				}
,
				"obj-7::obj-10" : 				{
					"parameter_longname" : "beat[2]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-24::obj-578" : 				{
					"parameter_longname" : "ramp_time[27]"
				}
,
				"obj-18::obj-9" : 				{
					"parameter_longname" : "bar[32]"
				}
,
				"obj-30::obj-79" : 				{
					"parameter_longname" : "destination_value[33]"
				}
,
				"obj-46::obj-79" : 				{
					"parameter_longname" : "destination_value[48]"
				}
,
				"obj-41::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[53]"
				}
,
				"obj-115::obj-10" : 				{
					"parameter_longname" : "beat[88]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-94::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[39]"
				}
,
				"obj-87::obj-55" : 				{
					"parameter_longname" : "counterreset[33]"
				}
,
				"obj-83::obj-26" : 				{
					"parameter_longname" : "counter[79]"
				}
,
				"obj-77::obj-17" : 				{
					"parameter_longname" : "custom_value[74]"
				}
,
				"obj-67::obj-55" : 				{
					"parameter_longname" : "counterreset[19]"
				}
,
				"obj-59::obj-57" : 				{
					"parameter_longname" : "transportreset[11]"
				}
,
				"obj-55::obj-10" : 				{
					"parameter_longname" : "beat[47]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-50::obj-17" : 				{
					"parameter_longname" : "custom_value[52]"
				}
,
				"obj-106::obj-578" : 				{
					"parameter_longname" : "ramp_time[9]"
				}
,
				"obj-9::obj-17" : 				{
					"parameter_longname" : "custom_value[14]"
				}
,
				"obj-26::obj-73" : 				{
					"parameter_longname" : "initial_value[79]"
				}
,
				"obj-21::obj-55" : 				{
					"parameter_longname" : "counterreset[75]"
				}
,
				"obj-15::obj-17" : 				{
					"parameter_longname" : "custom_value[20]"
				}
,
				"obj-32::obj-9" : 				{
					"parameter_longname" : "bar[45]"
				}
,
				"obj-27::obj-17" : 				{
					"parameter_longname" : "custom_value[30]"
				}
,
				"obj-43::obj-10" : 				{
					"parameter_longname" : "beat[35]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-38::obj-26" : 				{
					"parameter_longname" : "counter[41]"
				}
,
				"obj-100::obj-57" : 				{
					"parameter_longname" : "transportreset[41]"
				}
,
				"obj-89::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[35]"
				}
,
				"obj-85::obj-26" : 				{
					"parameter_longname" : "counter[81]"
				}
,
				"obj-80::obj-26" : 				{
					"parameter_longname" : "counter[76]"
				}
,
				"obj-74::obj-73" : 				{
					"parameter_longname" : "initial_value[21]"
				}
,
				"obj-60::obj-26" : 				{
					"parameter_longname" : "counter[62]"
				}
,
				"obj-57::obj-10" : 				{
					"parameter_longname" : "beat[49]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-52::obj-578" : 				{
					"parameter_longname" : "ramp_time[54]"
				}
,
				"obj-95::obj-67" : 				{
					"parameter_longname" : "toggle",
					"parameter_shortname" : "toggle"
				}
,
				"obj-104::obj-10" : 				{
					"parameter_longname" : "bar[15]",
					"parameter_range" : [ 1.0, 4.0 ],
					"parameter_shortname" : "bar"
				}
,
				"obj-24::obj-79" : 				{
					"parameter_longname" : "destination_value[27]"
				}
,
				"obj-18::obj-79" : 				{
					"parameter_longname" : "destination_value[22]"
				}
,
				"obj-34::obj-73" : 				{
					"parameter_longname" : "initial_value[67]"
				}
,
				"obj-30::obj-17" : 				{
					"parameter_longname" : "custom_value[33]"
				}
,
				"obj-45::obj-26" : 				{
					"parameter_longname" : "counter[47]"
				}
,
				"obj-41::obj-578" : 				{
					"parameter_longname" : "ramp_time[43]"
				}
,
				"obj-115::obj-67" : 				{
					"parameter_longname" : "toggle[98]"
				}
,
				"obj-110::obj-79" : 				{
					"parameter_longname" : "destination_value[93]"
				}
,
				"obj-87::obj-10" : 				{
					"parameter_longname" : "beat[73]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-82::obj-55" : 				{
					"parameter_longname" : "counterreset[28]"
				}
,
				"obj-76::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[23]"
				}
,
				"obj-67::obj-9" : 				{
					"parameter_longname" : "bar[79]"
				}
,
				"obj-62::obj-9" : 				{
					"parameter_longname" : "bar[74]"
				}
,
				"obj-59::obj-79" : 				{
					"parameter_longname" : "destination_value[61]"
				}
,
				"obj-54::obj-9" : 				{
					"parameter_longname" : "bar[66]"
				}
,
				"obj-50::obj-67" : 				{
					"parameter_longname" : "toggle[52]"
				}
,
				"obj-102::obj-9" : 				{
					"parameter_longname" : "bar[10]"
				}
,
				"obj-9::obj-57" : 				{
					"parameter_longname" : "transportreset[84]"
				}
,
				"obj-26::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[79]"
				}
,
				"obj-36::obj-10" : 				{
					"parameter_longname" : "beat[29]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-32::obj-10" : 				{
					"parameter_longname" : "beat[25]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-43::obj-67" : 				{
					"parameter_longname" : "toggle[45]"
				}
,
				"obj-37::obj-73" : 				{
					"parameter_longname" : "initial_value[50]"
				}
,
				"obj-112::obj-67" : 				{
					"parameter_longname" : "toggle[95]"
				}
,
				"obj-100::obj-73" : 				{
					"parameter_longname" : "initial_value[41]"
				}
,
				"obj-89::obj-10" : 				{
					"parameter_longname" : "beat[75]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-80::obj-17" : 				{
					"parameter_longname" : "custom_value[76]"
				}
,
				"obj-74::obj-17" : 				{
					"parameter_longname" : "custom_value[71]"
				}
,
				"obj-64::obj-17" : 				{
					"parameter_longname" : "custom_value[66]"
				}
,
				"obj-52::obj-73" : 				{
					"parameter_longname" : "initial_value[4]"
				}
,
				"obj-98::obj-73" : 				{
					"parameter_longname" : "initial_value[96]"
				}
,
				"obj-104::obj-26" : 				{
					"parameter_longname" : "counter[7]"
				}
,
				"obj-12::obj-9" : 				{
					"parameter_longname" : "bar[27]"
				}
,
				"obj-11::obj-578" : 				{
					"parameter_longname" : "ramp_time[16]"
				}
,
				"obj-6::obj-26" : 				{
					"parameter_longname" : "counter[11]"
				}
,
				"obj-17::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[71]"
				}
,
				"obj-34::obj-1" : 				{
					"parameter_longname" : "counter_incomingval[67]"
				}
,
				"obj-29::obj-10" : 				{
					"parameter_longname" : "beat[22]",
					"parameter_range" : [ 1.0, 4.0 ]
				}
,
				"obj-45::obj-73" : 				{
					"parameter_longname" : "initial_value[57]"
				}
,
				"obj-114::obj-9" : 				{
					"parameter_longname" : "bar[107]"
				}
,
				"obj-110::obj-578" : 				{
					"parameter_longname" : "ramp_time[93]"
				}
,
				"obj-93::obj-55" : 				{
					"parameter_longname" : "counterreset[38]"
				}
,
				"obj-82::obj-26" : 				{
					"parameter_longname" : "counter[78]"
				}
,
				"obj-76::obj-578" : 				{
					"parameter_longname" : "ramp_time[73]"
				}
,
				"obj-66::obj-578" : 				{
					"parameter_longname" : "ramp_time[68]"
				}
,
				"obj-62::obj-55" : 				{
					"parameter_longname" : "counterreset[14]"
				}
,
				"obj-54::obj-73" : 				{
					"parameter_longname" : "initial_value[6]"
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "autobp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Upshot Suite/patchers/upshot_cues",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Luca",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"fontname" : [ "Open Sans Semibold" ],
					"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"color" : [ 0.475135, 0.293895, 0.251069, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dark-night-patch",
				"default" : 				{
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "helpfile_label-1",
				"default" : 				{
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1 ],
					"fontsize" : [ 13 ],
					"fontname" : [ "Arial" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
