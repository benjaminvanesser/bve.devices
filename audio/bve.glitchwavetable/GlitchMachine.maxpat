{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 8,
			"minor": 6,
			"revision": 2,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [
			60,
			80,
			1720,
			900
		],
		"bglocked": 0,
		"openinpresentation": 1,
		"default_fontsize": 12.0,
		"default_fontface": 0,
		"default_fontname": "Arial",
		"gridonopen": 1,
		"gridsize": [
			15.0,
			15.0
		],
		"gridsnaponopen": 1,
		"objectsnaponopen": 1,
		"statusbarvisible": 2,
		"toolbarvisible": 1,
		"boxanimatetime": 200,
		"enablehscroll": 1,
		"enablevscroll": 1,
		"devicewidth": 1716.0,
		"description": "Glitch Machine - wavetable glitch beat generator",
		"digest": "",
		"tags": "",
		"style": "",
		"subpatcher_template": "",
		"boxes": [
			{
				"box": {
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"background": 1,
					"mode": 0,
					"bgcolor": [
						0.13,
						0.13,
						0.15,
						1.0
					],
					"border": 0,
					"rounded": 6,
					"patching_rect": [
						0,
						1000,
						1716,
						169
					],
					"presentation": 1,
					"presentation_rect": [
						0,
						0,
						1716,
						169
					],
					"id": "obj-1"
				}
			},
			{
				"box": {
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"background": 1,
					"mode": 0,
					"bgcolor": [
						0.2,
						0.2,
						0.23,
						1.0
					],
					"border": 0,
					"rounded": 6,
					"patching_rect": [
						2,
						1001,
						72,
						167
					],
					"presentation": 1,
					"presentation_rect": [
						2,
						1,
						72,
						167
					],
					"id": "obj-2"
				}
			},
			{
				"box": {
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"background": 1,
					"mode": 0,
					"bgcolor": [
						0.2,
						0.2,
						0.23,
						1.0
					],
					"border": 0,
					"rounded": 6,
					"patching_rect": [
						78,
						1001,
						426,
						167
					],
					"presentation": 1,
					"presentation_rect": [
						78,
						1,
						426,
						167
					],
					"id": "obj-3"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "SOURCE / WAVETABLE",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 8.5,
					"fontface": 1,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						268,
						702,
						200,
						12
					],
					"presentation": 1,
					"presentation_rect": [
						268,
						2,
						200,
						12
					],
					"id": "obj-4"
				}
			},
			{
				"box": {
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"background": 1,
					"mode": 0,
					"bgcolor": [
						0.2,
						0.2,
						0.23,
						1.0
					],
					"border": 0,
					"rounded": 6,
					"patching_rect": [
						508,
						1001,
						204,
						167
					],
					"presentation": 1,
					"presentation_rect": [
						508,
						1,
						204,
						167
					],
					"id": "obj-5"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "LOOPING ADSR",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 8.5,
					"fontface": 1,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						514,
						702,
						150,
						12
					],
					"presentation": 1,
					"presentation_rect": [
						514,
						2,
						150,
						12
					],
					"id": "obj-6"
				}
			},
			{
				"box": {
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"background": 1,
					"mode": 0,
					"bgcolor": [
						0.2,
						0.2,
						0.23,
						1.0
					],
					"border": 0,
					"rounded": 6,
					"patching_rect": [
						712,
						1001,
						308,
						167
					],
					"presentation": 1,
					"presentation_rect": [
						712,
						1,
						308,
						167
					],
					"id": "obj-7"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "LFO 1-10  (route any LFO to any parameter)",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 8.5,
					"fontface": 1,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						718,
						702,
						290,
						12
					],
					"presentation": 1,
					"presentation_rect": [
						718,
						2,
						290,
						12
					],
					"id": "obj-8"
				}
			},
			{
				"box": {
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"background": 1,
					"mode": 0,
					"bgcolor": [
						0.2,
						0.2,
						0.23,
						1.0
					],
					"border": 0,
					"rounded": 6,
					"patching_rect": [
						1024,
						1001,
						118,
						167
					],
					"presentation": 1,
					"presentation_rect": [
						1024,
						1,
						118,
						167
					],
					"id": "obj-9"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "ACTIVE MODULATION",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 8.0,
					"fontface": 1,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						1028,
						702,
						112,
						12
					],
					"presentation": 1,
					"presentation_rect": [
						1028,
						2,
						112,
						12
					],
					"id": "obj-10"
				}
			},
			{
				"box": {
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"background": 1,
					"mode": 0,
					"bgcolor": [
						0.2,
						0.2,
						0.23,
						1.0
					],
					"border": 0,
					"rounded": 6,
					"patching_rect": [
						1146,
						1001,
						368,
						167
					],
					"presentation": 1,
					"presentation_rect": [
						1146,
						1,
						368,
						167
					],
					"id": "obj-11"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "BEAT ENGINE (synced to Live)",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 8.5,
					"fontface": 1,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						1314,
						702,
						190,
						12
					],
					"presentation": 1,
					"presentation_rect": [
						1314,
						2,
						190,
						12
					],
					"id": "obj-12"
				}
			},
			{
				"box": {
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"background": 1,
					"mode": 0,
					"bgcolor": [
						0.2,
						0.2,
						0.23,
						1.0
					],
					"border": 0,
					"rounded": 6,
					"patching_rect": [
						1518,
						1001,
						150,
						167
					],
					"presentation": 1,
					"presentation_rect": [
						1518,
						1,
						150,
						167
					],
					"id": "obj-13"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "COLOUR FX",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 8.5,
					"fontface": 1,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						1524,
						702,
						100,
						12
					],
					"presentation": 1,
					"presentation_rect": [
						1524,
						2,
						100,
						12
					],
					"id": "obj-14"
				}
			},
			{
				"box": {
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"background": 1,
					"mode": 0,
					"bgcolor": [
						0.2,
						0.2,
						0.23,
						1.0
					],
					"border": 0,
					"rounded": 6,
					"patching_rect": [
						1672,
						1001,
						44,
						167
					],
					"presentation": 1,
					"presentation_rect": [
						1672,
						1,
						44,
						167
					],
					"id": "obj-15"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						70,
						20,
						44,
						48
					],
					"presentation_rect": [
						266,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Wavetable",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Wavetable",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_morph",
					"presentation": 1,
					"annotation": "Wavetable select/morph. Sweeps smoothly through 32 wavetables (Classic, Digital, Vocal, Metal, Glass, Organ, Hollow, Comb Saw, Grit, Sync Sweep, PWM, Folded, Spectral, Wobble, Rectified, Staircase, Bell, Strings, Reed, Brass, Pluck, Noise Burst, Hat Metal, Sub Kick, Tri Fold, Pulse Train, Ring Mod, Choir, Tilt, Phase Smear, Chebyshev, Bitwise). Each wavetable holds 8 frames, scanned by Position.",
					"annotation_name": "Wavetable",
					"id": "obj-16"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						120,
						20,
						44,
						48
					],
					"presentation_rect": [
						312,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Wavetable Position",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Position",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.2
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_pos",
					"presentation": 1,
					"annotation": "Position inside the selected wavetable: scans through its 8 frames.",
					"annotation_name": "Position",
					"id": "obj-17"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						170,
						20,
						44,
						48
					],
					"presentation_rect": [
						358,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Pitch",
							"parameter_mmax": 84,
							"parameter_mmin": 12,
							"parameter_shortname": "Pitch",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								38
							],
							"parameter_unitstyle": 8
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_pitch",
					"presentation": 1,
					"annotation": "Base pitch of the oscillator (MIDI note). Beat pitch jitter is added on top.",
					"annotation_name": "Pitch",
					"id": "obj-18"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						220,
						20,
						44,
						48
					],
					"presentation_rect": [
						404,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Pitch Env Amount",
							"parameter_mmax": 48,
							"parameter_mmin": -48,
							"parameter_shortname": "P.Env",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								24
							],
							"parameter_unitstyle": 7
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_pmod",
					"presentation": 1,
					"annotation": "Pitch envelope amount in semitones. The pitch starts this far away and drops to the base pitch (kick/zap sounds).",
					"annotation_name": "P.Env",
					"id": "obj-19"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						270,
						20,
						44,
						48
					],
					"presentation_rect": [
						450,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Pitch Env Decay",
							"parameter_mmax": 500,
							"parameter_mmin": 5,
							"parameter_shortname": "P.Decay",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								40
							],
							"parameter_unitstyle": 2,
							"parameter_exponent": 2.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_pdec",
					"presentation": 1,
					"annotation": "Decay time of the pitch envelope.",
					"annotation_name": "P.Decay",
					"id": "obj-20"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						320,
						20,
						44,
						48
					],
					"presentation_rect": [
						266,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source FM",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "FM",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_fm",
					"presentation": 1,
					"annotation": "Phase modulation by an inharmonic internal modulator. Adds metallic, bell-like and noisy overtones.",
					"annotation_name": "FM",
					"id": "obj-21"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						370,
						20,
						44,
						48
					],
					"presentation_rect": [
						312,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Warp",
							"parameter_mmax": 100,
							"parameter_mmin": -100,
							"parameter_shortname": "Warp",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								15
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_pd",
					"presentation": 1,
					"annotation": "Phase warp (-100 to 100). Positive values push the waveform's shape to the right, negative values push it to the left (phase distortion).",
					"annotation_name": "Warp",
					"id": "obj-22"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						420,
						20,
						44,
						48
					],
					"presentation_rect": [
						358,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Wavefold",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Fold",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.1
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_wfold",
					"presentation": 1,
					"annotation": "Wavefolder. Folds the waveform back on itself for harmonically rich, aggressive tones.",
					"annotation_name": "Fold",
					"id": "obj-23"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						470,
						20,
						44,
						48
					],
					"presentation_rect": [
						404,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_syncamt",
					"presentation": 1,
					"annotation": "Hard-sync ratio. Higher values restart the wavetable cycle faster inside each period for screaming sync sweeps.",
					"annotation_name": "Sync",
					"id": "obj-24"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Mono",
					"texton": "Poly",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						44,
						22
					],
					"presentation_rect": [
						404,
						134,
						44,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Poly Mode",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Mono",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_poly",
					"presentation": 1,
					"annotation": "Switches between monophonic (each hit cuts the previous one) and polyphonic (up to 8 overlapping voices) playback. Lit = Poly.",
					"annotation_name": "Mono",
					"id": "obj-25"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						570,
						20,
						44,
						48
					],
					"presentation_rect": [
						450,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Noise",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Noise",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_noiseamt",
					"presentation": 1,
					"annotation": "Mixes white noise into the oscillator for hats, snares and grit.",
					"annotation_name": "Noise",
					"id": "obj-26"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						620,
						20,
						44,
						48
					],
					"presentation_rect": [
						266,
						120,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Filter Cutoff",
							"parameter_mmax": 18000,
							"parameter_mmin": 40,
							"parameter_shortname": "Cutoff",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								9000
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_cutoff",
					"presentation": 1,
					"annotation": "Low-pass filter cutoff.",
					"annotation_name": "Cutoff",
					"id": "obj-27"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						670,
						20,
						44,
						48
					],
					"presentation_rect": [
						312,
						120,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Filter Resonance",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Reso",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.2
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_reso",
					"presentation": 1,
					"annotation": "Filter resonance.",
					"annotation_name": "Reso",
					"id": "obj-28"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						44,
						48
					],
					"presentation_rect": [
						358,
						120,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Source Filter Env Amount",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "F.Env",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_fenv",
					"presentation": 1,
					"annotation": "How much the amplitude envelope opens (or closes, when negative) the filter cutoff.",
					"annotation_name": "F.Env",
					"id": "obj-29"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						70,
						20,
						44,
						48
					],
					"presentation_rect": [
						512,
						70,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Env Attack",
							"parameter_mmax": 500,
							"parameter_mmin": 0.3,
							"parameter_shortname": "Atk",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 2,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_att",
					"presentation": 1,
					"annotation": "Envelope attack time.",
					"annotation_name": "Atk",
					"id": "obj-30"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						120,
						20,
						44,
						48
					],
					"presentation_rect": [
						558,
						70,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Env Decay",
							"parameter_mmax": 2000,
							"parameter_mmin": 5,
							"parameter_shortname": "Dec",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								140
							],
							"parameter_unitstyle": 2,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_dec",
					"presentation": 1,
					"annotation": "Envelope decay time.",
					"annotation_name": "Dec",
					"id": "obj-31"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						170,
						20,
						44,
						48
					],
					"presentation_rect": [
						604,
						70,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Env Sustain",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sus",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_sus",
					"presentation": 1,
					"annotation": "Envelope sustain level.",
					"annotation_name": "Sus",
					"id": "obj-32"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						220,
						20,
						44,
						48
					],
					"presentation_rect": [
						650,
						70,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Env Release",
							"parameter_mmax": 2000,
							"parameter_mmin": 5,
							"parameter_shortname": "Rel",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								40
							],
							"parameter_unitstyle": 2,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_rel",
					"presentation": 1,
					"annotation": "Envelope release time after the gate ends.",
					"annotation_name": "Rel",
					"id": "obj-33"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Loop",
					"texton": "Loop",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						44,
						22
					],
					"presentation_rect": [
						512,
						148,
						44,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Env Loop",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Loop",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_loopon",
					"presentation": 1,
					"annotation": "Loops the attack/decay stage (and the pitch drop) while the gate is held, turning the envelope into a retriggering stutter. While Loop is on, the gate is extended to at least 3 loop cycles so the repeats are always audible.",
					"annotation_name": "Loop",
					"id": "obj-34"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						320,
						20,
						44,
						48
					],
					"presentation_rect": [
						558,
						120,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Env Loop End",
							"parameter_mmax": 1,
							"parameter_mmin": 0.03,
							"parameter_shortname": "LoopEnd",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lend",
					"presentation": 1,
					"annotation": "Loop end point as a fraction of attack+decay. Short values chop the envelope early for buzzy, glitchy repeats. Can be modulated by any LFO.",
					"annotation_name": "LoopEnd",
					"id": "obj-35"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 1 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon0",
					"presentation": 1,
					"annotation": "Activates LFO 1. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"id": "obj-36"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 1 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape0",
					"presentation": 1,
					"annotation": "LFO 1 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"id": "obj-37"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						470,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 1 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate0",
					"presentation": 1,
					"annotation": "LFO 1 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"id": "obj-38"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						520,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 1 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth0",
					"presentation": 1,
					"annotation": "LFO 1 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"id": "obj-39"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 1 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync0",
					"presentation": 1,
					"annotation": "Quantises LFO 1 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"id": "obj-40"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 1 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv0",
					"presentation": 1,
					"annotation": "LFO 1 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"id": "obj-41"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Target",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 9.0,
					"fontface": 0,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						720,
						833,
						40,
						14
					],
					"presentation": 1,
					"presentation_rect": [
						720,
						133,
						40,
						14
					],
					"id": "obj-42"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 1 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								5
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt0",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 1 modulates.",
					"annotation_name": "Target",
					"id": "obj-43"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 2 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon1",
					"presentation": 1,
					"annotation": "Activates LFO 2. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"hidden": 1,
					"id": "obj-44"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 2 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape1",
					"presentation": 1,
					"annotation": "LFO 2 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"hidden": 1,
					"id": "obj-45"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						170,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 2 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate1",
					"presentation": 1,
					"annotation": "LFO 2 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"hidden": 1,
					"id": "obj-46"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						220,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 2 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth1",
					"presentation": 1,
					"annotation": "LFO 2 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"hidden": 1,
					"id": "obj-47"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 2 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync1",
					"presentation": 1,
					"annotation": "Quantises LFO 2 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"hidden": 1,
					"id": "obj-48"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 2 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv1",
					"presentation": 1,
					"annotation": "LFO 2 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"hidden": 1,
					"id": "obj-49"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 2 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								6
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt1",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 2 modulates.",
					"annotation_name": "Target",
					"hidden": 1,
					"id": "obj-50"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 3 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon2",
					"presentation": 1,
					"annotation": "Activates LFO 3. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"hidden": 1,
					"id": "obj-51"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 3 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								2
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape2",
					"presentation": 1,
					"annotation": "LFO 3 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"hidden": 1,
					"id": "obj-52"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						520,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 3 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								2
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate2",
					"presentation": 1,
					"annotation": "LFO 3 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"hidden": 1,
					"id": "obj-53"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						570,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 3 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth2",
					"presentation": 1,
					"annotation": "LFO 3 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"hidden": 1,
					"id": "obj-54"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 3 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync2",
					"presentation": 1,
					"annotation": "Quantises LFO 3 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"hidden": 1,
					"id": "obj-55"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 3 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv2",
					"presentation": 1,
					"annotation": "LFO 3 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"hidden": 1,
					"id": "obj-56"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 3 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt2",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 3 modulates.",
					"annotation_name": "Target",
					"hidden": 1,
					"id": "obj-57"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 4 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon3",
					"presentation": 1,
					"annotation": "Activates LFO 4. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"hidden": 1,
					"id": "obj-58"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 4 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								3
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape3",
					"presentation": 1,
					"annotation": "LFO 4 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"hidden": 1,
					"id": "obj-59"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						170,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 4 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.25
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate3",
					"presentation": 1,
					"annotation": "LFO 4 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"hidden": 1,
					"id": "obj-60"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						220,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 4 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth3",
					"presentation": 1,
					"annotation": "LFO 4 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"hidden": 1,
					"id": "obj-61"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 4 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync3",
					"presentation": 1,
					"annotation": "Quantises LFO 4 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"hidden": 1,
					"id": "obj-62"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 4 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv3",
					"presentation": 1,
					"annotation": "LFO 4 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"hidden": 1,
					"id": "obj-63"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 4 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt3",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 4 modulates.",
					"annotation_name": "Target",
					"hidden": 1,
					"id": "obj-64"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 5 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon4",
					"presentation": 1,
					"annotation": "Activates LFO 5. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"hidden": 1,
					"id": "obj-65"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 5 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								4
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape4",
					"presentation": 1,
					"annotation": "LFO 5 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"hidden": 1,
					"id": "obj-66"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						520,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 5 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								4
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate4",
					"presentation": 1,
					"annotation": "LFO 5 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"hidden": 1,
					"id": "obj-67"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						570,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 5 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth4",
					"presentation": 1,
					"annotation": "LFO 5 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"hidden": 1,
					"id": "obj-68"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 5 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync4",
					"presentation": 1,
					"annotation": "Quantises LFO 5 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"hidden": 1,
					"id": "obj-69"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 5 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv4",
					"presentation": 1,
					"annotation": "LFO 5 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"hidden": 1,
					"id": "obj-70"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 5 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								11
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt4",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 5 modulates.",
					"annotation_name": "Target",
					"hidden": 1,
					"id": "obj-71"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 6 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon5",
					"presentation": 1,
					"annotation": "Activates LFO 6. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"hidden": 1,
					"id": "obj-72"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 6 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								5
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape5",
					"presentation": 1,
					"annotation": "LFO 6 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"hidden": 1,
					"id": "obj-73"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						170,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 6 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.1
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate5",
					"presentation": 1,
					"annotation": "LFO 6 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"hidden": 1,
					"id": "obj-74"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						220,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 6 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth5",
					"presentation": 1,
					"annotation": "LFO 6 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"hidden": 1,
					"id": "obj-75"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 6 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync5",
					"presentation": 1,
					"annotation": "Quantises LFO 6 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"hidden": 1,
					"id": "obj-76"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 6 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv5",
					"presentation": 1,
					"annotation": "LFO 6 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"hidden": 1,
					"id": "obj-77"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 6 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								9
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt5",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 6 modulates.",
					"annotation_name": "Target",
					"hidden": 1,
					"id": "obj-78"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 7 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon6",
					"presentation": 1,
					"annotation": "Activates LFO 7. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"hidden": 1,
					"id": "obj-79"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 7 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape6",
					"presentation": 1,
					"annotation": "LFO 7 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"hidden": 1,
					"id": "obj-80"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						520,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 7 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								8
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate6",
					"presentation": 1,
					"annotation": "LFO 7 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"hidden": 1,
					"id": "obj-81"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						570,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 7 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth6",
					"presentation": 1,
					"annotation": "LFO 7 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"hidden": 1,
					"id": "obj-82"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 7 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync6",
					"presentation": 1,
					"annotation": "Quantises LFO 7 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"hidden": 1,
					"id": "obj-83"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 7 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv6",
					"presentation": 1,
					"annotation": "LFO 7 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"hidden": 1,
					"id": "obj-84"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 7 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								18
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt6",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 7 modulates.",
					"annotation_name": "Target",
					"hidden": 1,
					"id": "obj-85"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 8 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon7",
					"presentation": 1,
					"annotation": "Activates LFO 8. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"hidden": 1,
					"id": "obj-86"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 8 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape7",
					"presentation": 1,
					"annotation": "LFO 8 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"hidden": 1,
					"id": "obj-87"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						170,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 8 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.75
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate7",
					"presentation": 1,
					"annotation": "LFO 8 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"hidden": 1,
					"id": "obj-88"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						220,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 8 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth7",
					"presentation": 1,
					"annotation": "LFO 8 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"hidden": 1,
					"id": "obj-89"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 8 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync7",
					"presentation": 1,
					"annotation": "Quantises LFO 8 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"hidden": 1,
					"id": "obj-90"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 8 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv7",
					"presentation": 1,
					"annotation": "LFO 8 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"hidden": 1,
					"id": "obj-91"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 8 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								19
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt7",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 8 modulates.",
					"annotation_name": "Target",
					"hidden": 1,
					"id": "obj-92"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 9 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon8",
					"presentation": 1,
					"annotation": "Activates LFO 9. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"hidden": 1,
					"id": "obj-93"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 9 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								2
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape8",
					"presentation": 1,
					"annotation": "LFO 9 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"hidden": 1,
					"id": "obj-94"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						520,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 9 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								3
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate8",
					"presentation": 1,
					"annotation": "LFO 9 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"hidden": 1,
					"id": "obj-95"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						570,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 9 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth8",
					"presentation": 1,
					"annotation": "LFO 9 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"hidden": 1,
					"id": "obj-96"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 9 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync8",
					"presentation": 1,
					"annotation": "Quantises LFO 9 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"hidden": 1,
					"id": "obj-97"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 9 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv8",
					"presentation": 1,
					"annotation": "LFO 9 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"hidden": 1,
					"id": "obj-98"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 9 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								22
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt8",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 9 modulates.",
					"annotation_name": "Target",
					"hidden": 1,
					"id": "obj-99"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "On",
					"texton": "On",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						44,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 10 On",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "On",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lon9",
					"presentation": 1,
					"annotation": "Activates LFO 10. Inactive LFOs do nothing.",
					"annotation_name": "On",
					"hidden": 1,
					"id": "obj-100"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						64,
						18
					],
					"presentation_rect": [
						948,
						72,
						64,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 10 Shape",
							"parameter_mmax": 5,
							"parameter_mmin": 0,
							"parameter_shortname": "Shape",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								3
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Sine",
								"Tri",
								"Saw",
								"Square",
								"Random",
								"Rnd Smooth"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lshape9",
					"presentation": 1,
					"annotation": "LFO 10 waveshape: Sine, Triangle, Saw, Square, Random (stepped) or Rnd Smooth (interpolated random).",
					"annotation_name": "Shape",
					"hidden": 1,
					"id": "obj-101"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						170,
						20,
						44,
						48
					],
					"presentation_rect": [
						846,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 10 Rate",
							"parameter_mmax": 40,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Rate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								6
							],
							"parameter_unitstyle": 3,
							"parameter_exponent": 3.0
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lrate9",
					"presentation": 1,
					"annotation": "LFO 10 free-running rate in Hz (used when Sync is off).",
					"annotation_name": "Rate",
					"hidden": 1,
					"id": "obj-102"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						220,
						20,
						44,
						48
					],
					"presentation_rect": [
						896,
						40,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 10 Depth",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Depth",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldepth9",
					"presentation": 1,
					"annotation": "LFO 10 modulation depth. Negative values invert the LFO.",
					"annotation_name": "Depth",
					"hidden": 1,
					"id": "obj-103"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Sync",
					"texton": "Sync",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						48,
						22
					],
					"presentation_rect": [
						846,
						94,
						48,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 10 Sync",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Sync",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_lsync9",
					"presentation": 1,
					"annotation": "Quantises LFO 10 to Live's tempo using the note value on the right instead of the Hz rate. Synced LFOs stay locked to the transport.",
					"annotation_name": "Sync",
					"hidden": 1,
					"id": "obj-104"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						48,
						18
					],
					"presentation_rect": [
						898,
						94,
						48,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 10 Division",
							"parameter_mmax": 17,
							"parameter_mmin": 0,
							"parameter_shortname": "Div",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								7
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"4 bars",
								"2 bars",
								"1 bar",
								"1/2D",
								"1/2",
								"1/4D",
								"1/2T",
								"1/4",
								"1/8D",
								"1/4T",
								"1/8",
								"1/16D",
								"1/8T",
								"1/16",
								"1/16T",
								"1/32",
								"1/32T",
								"1/64"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ldiv9",
					"presentation": 1,
					"annotation": "LFO 10 note value when Sync is on: bars, straight, dotted (D) and triplet (T) divisions.",
					"annotation_name": "Div",
					"hidden": 1,
					"id": "obj-105"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						150,
						18
					],
					"presentation_rect": [
						762,
						130,
						150,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO 10 Target",
							"parameter_mmax": 31,
							"parameter_mmin": 0,
							"parameter_shortname": "Target",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								10
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Off",
								"Pitch",
								"P.Env",
								"P.Decay",
								"FM",
								"Position",
								"Warp",
								"Fold",
								"Sync",
								"Wavetable",
								"Noise",
								"Cutoff",
								"Reso",
								"F.Env",
								"Attack",
								"Decay",
								"Sustain",
								"Release",
								"LoopEnd",
								"Drive",
								"Comp",
								"FX Mix",
								"Pan",
								"Density",
								"Complex",
								"Ratchet",
								"Swing",
								"Mutate",
								"Gate",
								"Accent",
								"P.Jit",
								"T.Jit"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ltgt9",
					"presentation": 1,
					"annotation": "Choose which sound or beat parameter LFO 10 modulates.",
					"annotation_name": "Target",
					"hidden": 1,
					"id": "obj-106"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Retrig",
					"texton": "Retrig",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						948,
						98,
						64,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO Retrigger",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Retrig",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_retrig",
					"presentation": 1,
					"annotation": "When on, free-running (Hz) LFOs restart on every beat hit (random LFOs pick a new value per hit). Synced LFOs always stay locked to the transport.",
					"annotation_name": "Retrig",
					"id": "obj-107"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						470,
						20,
						44,
						48
					],
					"presentation_rect": [
						1310,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Density",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Density",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.55
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_density",
					"presentation": 1,
					"annotation": "How many steps of the grid fire.",
					"annotation_name": "Density",
					"id": "obj-108"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						520,
						20,
						44,
						48
					],
					"presentation_rect": [
						1356,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Complexity",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Complex",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.4
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_cx",
					"presentation": 1,
					"annotation": "Beat complexity: more subdivisions, micro-timing shifts, pitch jumps and end-of-loop fills.",
					"annotation_name": "Complex",
					"id": "obj-109"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						570,
						20,
						44,
						48
					],
					"presentation_rect": [
						1402,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Ratchet",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Ratchet",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.3
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_ratchet",
					"presentation": 1,
					"annotation": "Chance of a hit turning into a fast 2-4 note ratchet burst.",
					"annotation_name": "Ratchet",
					"id": "obj-110"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						620,
						20,
						44,
						48
					],
					"presentation_rect": [
						1448,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Swing",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Swing",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_swing",
					"presentation": 1,
					"annotation": "Delays every second subdivision for shuffle.",
					"annotation_name": "Swing",
					"id": "obj-111"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						670,
						20,
						44,
						48
					],
					"presentation_rect": [
						1310,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Mutate",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Mutate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.3
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_mutate",
					"presentation": 1,
					"annotation": "0 = the pattern repeats exactly. Higher values change more steps every loop.",
					"annotation_name": "Mutate",
					"id": "obj-112"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						44,
						48
					],
					"presentation_rect": [
						1356,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Gate",
							"parameter_mmax": 1.5,
							"parameter_mmin": 0.05,
							"parameter_shortname": "Gate",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_gatef",
					"presentation": 1,
					"annotation": "Note length relative to the step size (drives the envelope gate).",
					"annotation_name": "Gate",
					"id": "obj-113"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						70,
						20,
						44,
						48
					],
					"presentation_rect": [
						1402,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Accent",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Accent",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.5
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_accent",
					"presentation": 1,
					"annotation": "Velocity variation between strong and weak steps.",
					"annotation_name": "Accent",
					"id": "obj-114"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						120,
						20,
						44,
						48
					],
					"presentation_rect": [
						1448,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Pitch Jitter",
							"parameter_mmax": 24,
							"parameter_mmin": 0,
							"parameter_shortname": "P.Jit",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 7
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_pjit",
					"presentation": 1,
					"annotation": "Random pitch offset per hit, in semitones.",
					"annotation_name": "P.Jit",
					"id": "obj-115"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						170,
						20,
						44,
						48
					],
					"presentation_rect": [
						1310,
						120,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Table Jitter",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "T.Jit",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.1
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_posjit",
					"presentation": 1,
					"annotation": "Random wavetable position offset per hit.",
					"annotation_name": "T.Jit",
					"id": "obj-116"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Grid",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 9.0,
					"fontface": 0,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						1356,
						824,
						44,
						12
					],
					"presentation": 1,
					"presentation_rect": [
						1356,
						124,
						44,
						12
					],
					"id": "obj-117"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						44,
						18
					],
					"presentation_rect": [
						1356,
						140,
						44,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Grid",
							"parameter_mmax": 2,
							"parameter_mmin": 0,
							"parameter_shortname": "Grid",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"1/8",
								"1/16",
								"1/32"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_grid",
					"presentation": 1,
					"annotation": "Base step resolution of the beat grid.",
					"annotation_name": "Grid",
					"id": "obj-118"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Bars",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 9.0,
					"fontface": 0,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						1402,
						824,
						44,
						12
					],
					"presentation": 1,
					"presentation_rect": [
						1402,
						124,
						44,
						12
					],
					"id": "obj-119"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						44,
						18
					],
					"presentation_rect": [
						1402,
						140,
						44,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Bars",
							"parameter_mmax": 2,
							"parameter_mmin": 0,
							"parameter_shortname": "Bars",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"1",
								"2",
								"4"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_bars",
					"presentation": 1,
					"annotation": "Pattern loop length in bars.",
					"annotation_name": "Bars",
					"id": "obj-120"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "Triplets",
					"texton": "Triplets",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"fontsize": 9.0,
					"patching_rect": [
						20,
						20,
						44,
						22
					],
					"presentation_rect": [
						1448,
						134,
						44,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Beat Triplets",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Triplets",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_trip",
					"presentation": 1,
					"annotation": "Allows triplet subdivisions.",
					"annotation_name": "Triplets",
					"id": "obj-121"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						470,
						20,
						44,
						48
					],
					"presentation_rect": [
						1518,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "FX Drive",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Drive",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.3
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_drive",
					"presentation": 1,
					"annotation": "Saturation / distortion amount.",
					"annotation_name": "Drive",
					"id": "obj-122"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "Type",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 9.0,
					"fontface": 0,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						1564,
						720,
						44,
						12
					],
					"presentation": 1,
					"presentation_rect": [
						1564,
						20,
						44,
						12
					],
					"id": "obj-123"
				}
			},
			{
				"box": {
					"maxclass": "live.menu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						44,
						18
					],
					"presentation_rect": [
						1564,
						36,
						44,
						18
					],
					"fontsize": 9.0,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "FX Drive Type",
							"parameter_mmax": 2,
							"parameter_mmin": 0,
							"parameter_shortname": "Type",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"Soft",
								"Hard",
								"Fold"
							]
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_dtype",
					"presentation": 1,
					"annotation": "Distortion type: soft tanh saturation, hard clip or wavefold.",
					"annotation_name": "Type",
					"id": "obj-124"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						620,
						20,
						44,
						48
					],
					"presentation_rect": [
						1610,
						16,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "FX Compression",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Comp",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0.4
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_comp",
					"presentation": 1,
					"annotation": "One-knob compressor: lowers threshold, raises ratio and adds make-up gain.",
					"annotation_name": "Comp",
					"id": "obj-125"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						670,
						20,
						44,
						48
					],
					"presentation_rect": [
						1518,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "FX Mix",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Mix",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_mixamt",
					"presentation": 1,
					"annotation": "Dry/wet balance of the colour effects.",
					"annotation_name": "Mix",
					"id": "obj-126"
				}
			},
			{
				"box": {
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"patching_rect": [
						20,
						20,
						44,
						48
					],
					"presentation_rect": [
						1564,
						68,
						44,
						48
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "FX Pan",
							"parameter_mmax": 1,
							"parameter_mmin": -1,
							"parameter_shortname": "Pan",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 1
						}
					},
					"parameter_enable": 1,
					"varname": "ctl_panpos",
					"presentation": 1,
					"annotation": "Stereo position of the generated sound.",
					"annotation_name": "Pan",
					"id": "obj-127"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 1,
					"text": "OFF",
					"texton": "ON",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"varname": "power",
					"fontsize": 11.0,
					"presentation": 1,
					"patching_rect": [
						20,
						20,
						60,
						28
					],
					"presentation_rect": [
						6,
						16,
						64,
						30
					],
					"annotation": "Device on/off. Turns the beat generator and output on or off.",
					"annotation_name": "Power",
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Power",
							"parameter_mmax": 1,
							"parameter_mmin": 0,
							"parameter_shortname": "Power",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								1
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"off",
								"on"
							]
						}
					},
					"id": "obj-128"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"mode": 0,
					"text": "Reseed",
					"texton": "Reseed",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 0,
					"fontsize": 9.0,
					"presentation": 1,
					"patching_rect": [
						20,
						20,
						64,
						22
					],
					"presentation_rect": [
						6,
						54,
						64,
						26
					],
					"annotation": "Rolls a new random seed so the beat generator creates a different pattern with the same settings.",
					"annotation_name": "Reseed",
					"id": "obj-129"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "GLITCH",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 11.0,
					"fontface": 1,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						10,
						824,
						62,
						14
					],
					"presentation": 1,
					"presentation_rect": [
						10,
						124,
						62,
						14
					],
					"id": "obj-130"
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"text": "MACHINE",
					"numinlets": 1,
					"numoutlets": 0,
					"fontsize": 11.0,
					"fontface": 1,
					"textcolor": [
						0.78,
						0.78,
						0.8,
						1.0
					],
					"patching_rect": [
						10,
						838,
						62,
						14
					],
					"presentation": 1,
					"presentation_rect": [
						10,
						138,
						62,
						14
					],
					"id": "obj-131"
				}
			},
			{
				"box": {
					"maxclass": "live.tab",
					"num_lines_patching": 1,
					"num_lines_presentation": 1,
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"float"
					],
					"parameter_enable": 1,
					"varname": "lfo_select",
					"fontsize": 9.0,
					"presentation": 1,
					"patching_rect": [
						20,
						20,
						292,
						20
					],
					"presentation_rect": [
						720,
						16,
						296,
						20
					],
					"annotation": "Select which of the 10 LFOs you are editing.",
					"annotation_name": "LFO Select",
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "LFO Select",
							"parameter_mmax": 9,
							"parameter_mmin": 0,
							"parameter_shortname": "LFO",
							"parameter_type": 2,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								0
							],
							"parameter_unitstyle": 0,
							"parameter_enum": [
								"1",
								"2",
								"3",
								"4",
								"5",
								"6",
								"7",
								"8",
								"9",
								"10"
							]
						}
					},
					"id": "obj-132"
				}
			},
			{
				"box": {
					"maxclass": "jsui",
					"filename": "gm_ui.js",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						82,
						1302,
						180,
						165
					],
					"presentation": 1,
					"presentation_rect": [
						82,
						2,
						180,
						165
					],
					"border": 0,
					"id": "obj-133"
				}
			},
			{
				"box": {
					"maxclass": "jsui",
					"filename": "gm_ui.js",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1028,
						1316,
						110,
						150
					],
					"presentation": 1,
					"presentation_rect": [
						1028,
						16,
						110,
						150
					],
					"border": 0,
					"id": "obj-134"
				}
			},
			{
				"box": {
					"maxclass": "jsui",
					"filename": "gm_ui.js",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						512,
						1316,
						196,
						52
					],
					"presentation": 1,
					"presentation_rect": [
						512,
						16,
						196,
						52
					],
					"border": 0,
					"id": "obj-135"
				}
			},
			{
				"box": {
					"maxclass": "jsui",
					"filename": "gm_ui.js",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1150,
						1302,
						160,
						165
					],
					"presentation": 1,
					"presentation_rect": [
						1150,
						2,
						160,
						165
					],
					"border": 0,
					"id": "obj-136"
				}
			},
			{
				"box": {
					"maxclass": "jsui",
					"filename": "gm_ui.js",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						720,
						1340,
						122,
						84
					],
					"presentation": 1,
					"presentation_rect": [
						720,
						40,
						122,
						84
					],
					"border": 0,
					"id": "obj-137"
				}
			},
			{
				"box": {
					"maxclass": "live.gain~",
					"numinlets": 2,
					"numoutlets": 5,
					"outlettype": [
						"signal",
						"signal",
						"",
						"float",
						"list"
					],
					"orientation": 0,
					"parameter_enable": 1,
					"varname": "out_gain",
					"presentation": 1,
					"patching_rect": [
						800,
						900,
						36,
						150
					],
					"presentation_rect": [
						1676,
						2,
						36,
						165
					],
					"annotation": "Output level of the device.",
					"annotation_name": "Output",
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "Output",
							"parameter_mmax": 6.0,
							"parameter_mmin": -70.0,
							"parameter_shortname": "Output",
							"parameter_type": 0,
							"parameter_initial_enable": 1,
							"parameter_initial": [
								-6.0
							],
							"parameter_unitstyle": 4
						}
					},
					"id": "obj-138"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "live.thisdevice",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"bang",
						"int",
						"int"
					],
					"patching_rect": [
						20,
						700,
						90,
						22
					],
					"id": "obj-139"
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "init",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						20,
						730,
						40,
						22
					],
					"id": "obj-140"
				}
			},
			{
				"box": {
					"maxclass": "message",
					"text": "1",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						120,
						730,
						30,
						22
					],
					"id": "obj-141"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "metro 5",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						120,
						760,
						60,
						22
					],
					"id": "obj-142"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "js glitch_machine.js",
					"numinlets": 1,
					"numoutlets": 6,
					"outlettype": [
						"",
						"",
						"",
						"",
						"",
						""
					],
					"patching_rect": [
						20,
						800,
						400,
						22
					],
					"id": "obj-143"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "buffer~ glitchwt 14000 1",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"bang"
					],
					"patching_rect": [
						450,
						800,
						150,
						22
					],
					"id": "obj-144"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "gen~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 8,
							"minor": 6,
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "dsp.gen",
						"rect": [
							100,
							100,
							820,
							800
						],
						"bglocked": 0,
						"openinpresentation": 0,
						"default_fontsize": 12.0,
						"default_fontface": 0,
						"default_fontname": "Arial",
						"gridonopen": 1,
						"gridsize": [
							15.0,
							15.0
						],
						"gridsnaponopen": 1,
						"objectsnaponopen": 1,
						"statusbarvisible": 2,
						"toolbarvisible": 1,
						"boxanimatetime": 200,
						"enablehscroll": 1,
						"enablevscroll": 1,
						"devicewidth": 0.0,
						"description": "",
						"digest": "",
						"tags": "",
						"style": "",
						"subpatcher_template": "",
						"boxes": [
							{
								"box": {
									"code": "// GLITCH MACHINE - wavetable voice + 10 routable LFOs + colour FX\nBuffer wt(\"glitchwt\");\nParam morph(0);\nParam pos(0.2);\nParam pitch(38);\nParam pmod(24);\nParam pdec(40);\nParam fm(0);\nParam pd(15);\nParam wfold(0.1);\nParam syncamt(0);\nParam noiseamt(0);\nParam cutoff(9000);\nParam reso(0.2);\nParam fenv(0);\nParam att(1);\nParam dec(140);\nParam sus(0);\nParam rel(40);\nParam loopon(0);\nParam lend(1);\nParam lon0(0);\nParam lshape0(0);\nParam lrate0(0.5);\nParam ldepth0(0.5);\nParam lsync0(0);\nParam ltgt0(5);\nParam lon1(0);\nParam lshape1(1);\nParam lrate1(1);\nParam ldepth1(0.5);\nParam lsync1(0);\nParam ltgt1(6);\nParam lon2(0);\nParam lshape2(2);\nParam lrate2(2);\nParam ldepth2(0.5);\nParam lsync2(0);\nParam ltgt2(7);\nParam lon3(0);\nParam lshape3(3);\nParam lrate3(0.25);\nParam ldepth3(0.5);\nParam lsync3(0);\nParam ltgt3(1);\nParam lon4(0);\nParam lshape4(4);\nParam lrate4(4);\nParam ldepth4(0.5);\nParam lsync4(0);\nParam ltgt4(11);\nParam lon5(0);\nParam lshape5(5);\nParam lrate5(0.1);\nParam ldepth5(0.5);\nParam lsync5(0);\nParam ltgt5(9);\nParam lon6(0);\nParam lshape6(0);\nParam lrate6(8);\nParam ldepth6(0.5);\nParam lsync6(0);\nParam ltgt6(18);\nParam lon7(0);\nParam lshape7(1);\nParam lrate7(0.75);\nParam ldepth7(0.5);\nParam lsync7(0);\nParam ltgt7(19);\nParam lon8(0);\nParam lshape8(2);\nParam lrate8(3);\nParam ldepth8(0.5);\nParam lsync8(0);\nParam ltgt8(22);\nParam lon9(0);\nParam lshape9(3);\nParam lrate9(6);\nParam ldepth9(0.5);\nParam lsync9(0);\nParam ltgt9(10);\nParam retrig(1);\nParam drive(0.3);\nParam dtype(0);\nParam comp(0.4);\nParam mixamt(1);\nParam panpos(0);\nParam hit(0);\nParam vel(1);\nParam poff(0);\nParam poso(0);\nParam gms(100);\nParam bpm(120);\nParam bpos(0);\nParam lcpb0(1);\nParam lcpb1(1);\nParam lcpb2(1);\nParam lcpb3(1);\nParam lcpb4(1);\nParam lcpb5(1);\nParam lcpb6(1);\nParam lcpb7(1);\nParam lcpb8(1);\nParam lcpb9(1);\nHistory dcx(0);\nHistory dcy(0);\nHistory cenv(0);\nHistory bc(0);\nHistory cka(0);\nHistory ckr(0);\nParam vidx(0);\nHistory ph0(0);\nHistory mph0(0);\nHistory t0(100000000);\nHistory gt0(0);\nHistory g0(0);\nHistory hv0(1);\nHistory hp0(0);\nHistory hpos0(0);\nHistory rt0(100000000);\nHistory relv0(0);\nHistory lastenv0(0);\nHistory lowv0(0);\nHistory bandv0(0);\nHistory ph1(0);\nHistory mph1(0);\nHistory t1(100000000);\nHistory gt1(0);\nHistory g1(0);\nHistory hv1(1);\nHistory hp1(0);\nHistory hpos1(0);\nHistory rt1(100000000);\nHistory relv1(0);\nHistory lastenv1(0);\nHistory lowv1(0);\nHistory bandv1(0);\nHistory ph2(0);\nHistory mph2(0);\nHistory t2(100000000);\nHistory gt2(0);\nHistory g2(0);\nHistory hv2(1);\nHistory hp2(0);\nHistory hpos2(0);\nHistory rt2(100000000);\nHistory relv2(0);\nHistory lastenv2(0);\nHistory lowv2(0);\nHistory bandv2(0);\nHistory ph3(0);\nHistory mph3(0);\nHistory t3(100000000);\nHistory gt3(0);\nHistory g3(0);\nHistory hv3(1);\nHistory hp3(0);\nHistory hpos3(0);\nHistory rt3(100000000);\nHistory relv3(0);\nHistory lastenv3(0);\nHistory lowv3(0);\nHistory bandv3(0);\nHistory ph4(0);\nHistory mph4(0);\nHistory t4(100000000);\nHistory gt4(0);\nHistory g4(0);\nHistory hv4(1);\nHistory hp4(0);\nHistory hpos4(0);\nHistory rt4(100000000);\nHistory relv4(0);\nHistory lastenv4(0);\nHistory lowv4(0);\nHistory bandv4(0);\nHistory ph5(0);\nHistory mph5(0);\nHistory t5(100000000);\nHistory gt5(0);\nHistory g5(0);\nHistory hv5(1);\nHistory hp5(0);\nHistory hpos5(0);\nHistory rt5(100000000);\nHistory relv5(0);\nHistory lastenv5(0);\nHistory lowv5(0);\nHistory bandv5(0);\nHistory ph6(0);\nHistory mph6(0);\nHistory t6(100000000);\nHistory gt6(0);\nHistory g6(0);\nHistory hv6(1);\nHistory hp6(0);\nHistory hpos6(0);\nHistory rt6(100000000);\nHistory relv6(0);\nHistory lastenv6(0);\nHistory lowv6(0);\nHistory bandv6(0);\nHistory ph7(0);\nHistory mph7(0);\nHistory t7(100000000);\nHistory gt7(0);\nHistory g7(0);\nHistory hv7(1);\nHistory hp7(0);\nHistory hpos7(0);\nHistory rt7(100000000);\nHistory relv7(0);\nHistory lastenv7(0);\nHistory lowv7(0);\nHistory bandv7(0);\nHistory lp0(0);\nHistory nc0(0);\nHistory lp1(0);\nHistory nc1(0);\nHistory lp2(0);\nHistory nc2(0);\nHistory lp3(0);\nHistory nc3(0);\nHistory lp4(0);\nHistory nc4(0);\nHistory lp5(0);\nHistory nc5(0);\nHistory lp6(0);\nHistory nc6(0);\nHistory lp7(0);\nHistory nc7(0);\nHistory lp8(0);\nHistory nc8(0);\nHistory lp9(0);\nHistory nc9(0);\n\nsr = samplerate;\n// ---- transport clock (beats), nudged by the script every tick\nbc = bc + bpm / (60 * sr);\nberr = 0;\nif (change(bpos) != 0) {\n  berr = bpos - bc;\n  if (abs(berr) > 0.5) { bc = bpos; } else { bc = bc + berr * 0.15; }\n}\nanyon = 0;\na = 0;\nd = 0;\nrs = 0;\nenv = 0;\nact = 0;\nts = 0;\ntp = 0;\nte = 0;\nL = 0;\nx2 = 0;\nr = 0;\npe = 0;\nsemi = 0;\nfrq = 0;\ninc = 0;\nsp = 0;\nbb = 0;\nsp2 = 0;\npz = 0;\nfr = 0;\nf0 = 0;\nf1 = 0;\nfmix = 0;\nidx = 0;\ni0 = 0;\nfi = 0;\ni1 = 0;\noa0 = 0;\noa1 = 0;\nob0 = 0;\nob1 = 0;\npa = 0;\npb = 0;\npmix = 0;\ns00 = 0;\ns01 = 0;\ns10 = 0;\ns11 = 0;\nu00 = 0;\nu01 = 0;\nu10 = 0;\nu11 = 0;\nwa0 = 0;\nwa1 = 0;\nwb0 = 0;\nwb1 = 0;\nwa = 0;\nwb = 0;\nx = 0;\nfc = 0;\nff = 0;\nqd = 0;\nhi = 0;\nvsum = 0;\nvi = 0;\nle = 1;\nL = 1;\nxx0 = 0; ra0 = 0; rb0 = 0; sm0 = 0;\nxx1 = 0; ra1 = 0; rb1 = 0; sm1 = 0;\nxx2 = 0; ra2 = 0; rb2 = 0; sm2 = 0;\nxx3 = 0; ra3 = 0; rb3 = 0; sm3 = 0;\nxx4 = 0; ra4 = 0; rb4 = 0; sm4 = 0;\nxx5 = 0; ra5 = 0; rb5 = 0; sm5 = 0;\nxx6 = 0; ra6 = 0; rb6 = 0; sm6 = 0;\nxx7 = 0; ra7 = 0; rb7 = 0; sm7 = 0;\nxx8 = 0; ra8 = 0; rb8 = 0; sm8 = 0;\nxx9 = 0; ra9 = 0; rb9 = 0; sm9 = 0;\n\n// ---- trigger from the beat engine\nif (change(hit) != 0) {\n  vi = vidx;\n  if (vi == 0) {\n    if (lastenv0 < 0.001) { lowv0 = 0; bandv0 = 0; }\n    t0 = 0; g0 = 1; gt0 = max(gms * 0.001 * sr, 32);\n    hv0 = vel; hp0 = poff; hpos0 = poso; ph0 = 0; mph0 = 0;\n  }\n  if (vi == 1) {\n    if (lastenv1 < 0.001) { lowv1 = 0; bandv1 = 0; }\n    t1 = 0; g1 = 1; gt1 = max(gms * 0.001 * sr, 32);\n    hv1 = vel; hp1 = poff; hpos1 = poso; ph1 = 0; mph1 = 0;\n  }\n  if (vi == 2) {\n    if (lastenv2 < 0.001) { lowv2 = 0; bandv2 = 0; }\n    t2 = 0; g2 = 1; gt2 = max(gms * 0.001 * sr, 32);\n    hv2 = vel; hp2 = poff; hpos2 = poso; ph2 = 0; mph2 = 0;\n  }\n  if (vi == 3) {\n    if (lastenv3 < 0.001) { lowv3 = 0; bandv3 = 0; }\n    t3 = 0; g3 = 1; gt3 = max(gms * 0.001 * sr, 32);\n    hv3 = vel; hp3 = poff; hpos3 = poso; ph3 = 0; mph3 = 0;\n  }\n  if (vi == 4) {\n    if (lastenv4 < 0.001) { lowv4 = 0; bandv4 = 0; }\n    t4 = 0; g4 = 1; gt4 = max(gms * 0.001 * sr, 32);\n    hv4 = vel; hp4 = poff; hpos4 = poso; ph4 = 0; mph4 = 0;\n  }\n  if (vi == 5) {\n    if (lastenv5 < 0.001) { lowv5 = 0; bandv5 = 0; }\n    t5 = 0; g5 = 1; gt5 = max(gms * 0.001 * sr, 32);\n    hv5 = vel; hp5 = poff; hpos5 = poso; ph5 = 0; mph5 = 0;\n  }\n  if (vi == 6) {\n    if (lastenv6 < 0.001) { lowv6 = 0; bandv6 = 0; }\n    t6 = 0; g6 = 1; gt6 = max(gms * 0.001 * sr, 32);\n    hv6 = vel; hp6 = poff; hpos6 = poso; ph6 = 0; mph6 = 0;\n  }\n  if (vi == 7) {\n    if (lastenv7 < 0.001) { lowv7 = 0; bandv7 = 0; }\n    t7 = 0; g7 = 1; gt7 = max(gms * 0.001 * sr, 32);\n    hv7 = vel; hp7 = poff; hpos7 = poso; ph7 = 0; mph7 = 0;\n  }\n  if (retrig > 0.5) {\n    if (lsync0 < 0.5) { lp0 = 0; nc0 = nc0 + 1; }\n    if (lsync1 < 0.5) { lp1 = 0; nc1 = nc1 + 1; }\n    if (lsync2 < 0.5) { lp2 = 0; nc2 = nc2 + 1; }\n    if (lsync3 < 0.5) { lp3 = 0; nc3 = nc3 + 1; }\n    if (lsync4 < 0.5) { lp4 = 0; nc4 = nc4 + 1; }\n    if (lsync5 < 0.5) { lp5 = 0; nc5 = nc5 + 1; }\n    if (lsync6 < 0.5) { lp6 = 0; nc6 = nc6 + 1; }\n    if (lsync7 < 0.5) { lp7 = 0; nc7 = nc7 + 1; }\n    if (lsync8 < 0.5) { lp8 = 0; nc8 = nc8 + 1; }\n    if (lsync9 < 0.5) { lp9 = 0; nc9 = nc9 + 1; }\n  }\n}\n\n// ---- 10 LFOs (only computed while switched on)\nlv0 = 0;\nmv0 = 0;\nif (lon0 > 0.5) {\nif (lsync0 > 0.5) {\n  xx0 = bc * lcpb0;\n  nc0 = floor(xx0);\n  lp0 = xx0 - nc0;\n} else {\n  lp0 = lp0 + lrate0 / sr;\n  if (lp0 >= 1) { lp0 = lp0 - 1; nc0 = nc0 + 1; }\n}\nif (lshape0 < 0.5) {\n  lv0 = sin(twopi * lp0);\n} else if (lshape0 < 1.5) {\n  lv0 = 1 - 4 * abs(lp0 - 0.5);\n} else if (lshape0 < 2.5) {\n  lv0 = lp0 * 2 - 1;\n} else if (lshape0 < 3.5) {\n  if (lp0 < 0.5) { lv0 = 1; } else { lv0 = -1; }\n} else {\n  ra0 = sin(nc0 * 12.9898 + 0 * 78.233) * 43758.5453;\n  ra0 = (ra0 - floor(ra0)) * 2 - 1;\n  rb0 = sin((nc0 + 1) * 12.9898 + 0 * 78.233) * 43758.5453;\n  rb0 = (rb0 - floor(rb0)) * 2 - 1;\n  if (lshape0 < 4.5) {\n    lv0 = ra0;\n  } else {\n    sm0 = lp0 * lp0 * (3 - 2 * lp0);\n    lv0 = ra0 + (rb0 - ra0) * sm0;\n  }\n}\nmv0 = lv0 * ldepth0;\n}\nlv1 = 0;\nmv1 = 0;\nif (lon1 > 0.5) {\nif (lsync1 > 0.5) {\n  xx1 = bc * lcpb1;\n  nc1 = floor(xx1);\n  lp1 = xx1 - nc1;\n} else {\n  lp1 = lp1 + lrate1 / sr;\n  if (lp1 >= 1) { lp1 = lp1 - 1; nc1 = nc1 + 1; }\n}\nif (lshape1 < 0.5) {\n  lv1 = sin(twopi * lp1);\n} else if (lshape1 < 1.5) {\n  lv1 = 1 - 4 * abs(lp1 - 0.5);\n} else if (lshape1 < 2.5) {\n  lv1 = lp1 * 2 - 1;\n} else if (lshape1 < 3.5) {\n  if (lp1 < 0.5) { lv1 = 1; } else { lv1 = -1; }\n} else {\n  ra1 = sin(nc1 * 12.9898 + 1 * 78.233) * 43758.5453;\n  ra1 = (ra1 - floor(ra1)) * 2 - 1;\n  rb1 = sin((nc1 + 1) * 12.9898 + 1 * 78.233) * 43758.5453;\n  rb1 = (rb1 - floor(rb1)) * 2 - 1;\n  if (lshape1 < 4.5) {\n    lv1 = ra1;\n  } else {\n    sm1 = lp1 * lp1 * (3 - 2 * lp1);\n    lv1 = ra1 + (rb1 - ra1) * sm1;\n  }\n}\nmv1 = lv1 * ldepth1;\n}\nlv2 = 0;\nmv2 = 0;\nif (lon2 > 0.5) {\nif (lsync2 > 0.5) {\n  xx2 = bc * lcpb2;\n  nc2 = floor(xx2);\n  lp2 = xx2 - nc2;\n} else {\n  lp2 = lp2 + lrate2 / sr;\n  if (lp2 >= 1) { lp2 = lp2 - 1; nc2 = nc2 + 1; }\n}\nif (lshape2 < 0.5) {\n  lv2 = sin(twopi * lp2);\n} else if (lshape2 < 1.5) {\n  lv2 = 1 - 4 * abs(lp2 - 0.5);\n} else if (lshape2 < 2.5) {\n  lv2 = lp2 * 2 - 1;\n} else if (lshape2 < 3.5) {\n  if (lp2 < 0.5) { lv2 = 1; } else { lv2 = -1; }\n} else {\n  ra2 = sin(nc2 * 12.9898 + 2 * 78.233) * 43758.5453;\n  ra2 = (ra2 - floor(ra2)) * 2 - 1;\n  rb2 = sin((nc2 + 1) * 12.9898 + 2 * 78.233) * 43758.5453;\n  rb2 = (rb2 - floor(rb2)) * 2 - 1;\n  if (lshape2 < 4.5) {\n    lv2 = ra2;\n  } else {\n    sm2 = lp2 * lp2 * (3 - 2 * lp2);\n    lv2 = ra2 + (rb2 - ra2) * sm2;\n  }\n}\nmv2 = lv2 * ldepth2;\n}\nlv3 = 0;\nmv3 = 0;\nif (lon3 > 0.5) {\nif (lsync3 > 0.5) {\n  xx3 = bc * lcpb3;\n  nc3 = floor(xx3);\n  lp3 = xx3 - nc3;\n} else {\n  lp3 = lp3 + lrate3 / sr;\n  if (lp3 >= 1) { lp3 = lp3 - 1; nc3 = nc3 + 1; }\n}\nif (lshape3 < 0.5) {\n  lv3 = sin(twopi * lp3);\n} else if (lshape3 < 1.5) {\n  lv3 = 1 - 4 * abs(lp3 - 0.5);\n} else if (lshape3 < 2.5) {\n  lv3 = lp3 * 2 - 1;\n} else if (lshape3 < 3.5) {\n  if (lp3 < 0.5) { lv3 = 1; } else { lv3 = -1; }\n} else {\n  ra3 = sin(nc3 * 12.9898 + 3 * 78.233) * 43758.5453;\n  ra3 = (ra3 - floor(ra3)) * 2 - 1;\n  rb3 = sin((nc3 + 1) * 12.9898 + 3 * 78.233) * 43758.5453;\n  rb3 = (rb3 - floor(rb3)) * 2 - 1;\n  if (lshape3 < 4.5) {\n    lv3 = ra3;\n  } else {\n    sm3 = lp3 * lp3 * (3 - 2 * lp3);\n    lv3 = ra3 + (rb3 - ra3) * sm3;\n  }\n}\nmv3 = lv3 * ldepth3;\n}\nlv4 = 0;\nmv4 = 0;\nif (lon4 > 0.5) {\nif (lsync4 > 0.5) {\n  xx4 = bc * lcpb4;\n  nc4 = floor(xx4);\n  lp4 = xx4 - nc4;\n} else {\n  lp4 = lp4 + lrate4 / sr;\n  if (lp4 >= 1) { lp4 = lp4 - 1; nc4 = nc4 + 1; }\n}\nif (lshape4 < 0.5) {\n  lv4 = sin(twopi * lp4);\n} else if (lshape4 < 1.5) {\n  lv4 = 1 - 4 * abs(lp4 - 0.5);\n} else if (lshape4 < 2.5) {\n  lv4 = lp4 * 2 - 1;\n} else if (lshape4 < 3.5) {\n  if (lp4 < 0.5) { lv4 = 1; } else { lv4 = -1; }\n} else {\n  ra4 = sin(nc4 * 12.9898 + 4 * 78.233) * 43758.5453;\n  ra4 = (ra4 - floor(ra4)) * 2 - 1;\n  rb4 = sin((nc4 + 1) * 12.9898 + 4 * 78.233) * 43758.5453;\n  rb4 = (rb4 - floor(rb4)) * 2 - 1;\n  if (lshape4 < 4.5) {\n    lv4 = ra4;\n  } else {\n    sm4 = lp4 * lp4 * (3 - 2 * lp4);\n    lv4 = ra4 + (rb4 - ra4) * sm4;\n  }\n}\nmv4 = lv4 * ldepth4;\n}\nlv5 = 0;\nmv5 = 0;\nif (lon5 > 0.5) {\nif (lsync5 > 0.5) {\n  xx5 = bc * lcpb5;\n  nc5 = floor(xx5);\n  lp5 = xx5 - nc5;\n} else {\n  lp5 = lp5 + lrate5 / sr;\n  if (lp5 >= 1) { lp5 = lp5 - 1; nc5 = nc5 + 1; }\n}\nif (lshape5 < 0.5) {\n  lv5 = sin(twopi * lp5);\n} else if (lshape5 < 1.5) {\n  lv5 = 1 - 4 * abs(lp5 - 0.5);\n} else if (lshape5 < 2.5) {\n  lv5 = lp5 * 2 - 1;\n} else if (lshape5 < 3.5) {\n  if (lp5 < 0.5) { lv5 = 1; } else { lv5 = -1; }\n} else {\n  ra5 = sin(nc5 * 12.9898 + 5 * 78.233) * 43758.5453;\n  ra5 = (ra5 - floor(ra5)) * 2 - 1;\n  rb5 = sin((nc5 + 1) * 12.9898 + 5 * 78.233) * 43758.5453;\n  rb5 = (rb5 - floor(rb5)) * 2 - 1;\n  if (lshape5 < 4.5) {\n    lv5 = ra5;\n  } else {\n    sm5 = lp5 * lp5 * (3 - 2 * lp5);\n    lv5 = ra5 + (rb5 - ra5) * sm5;\n  }\n}\nmv5 = lv5 * ldepth5;\n}\nlv6 = 0;\nmv6 = 0;\nif (lon6 > 0.5) {\nif (lsync6 > 0.5) {\n  xx6 = bc * lcpb6;\n  nc6 = floor(xx6);\n  lp6 = xx6 - nc6;\n} else {\n  lp6 = lp6 + lrate6 / sr;\n  if (lp6 >= 1) { lp6 = lp6 - 1; nc6 = nc6 + 1; }\n}\nif (lshape6 < 0.5) {\n  lv6 = sin(twopi * lp6);\n} else if (lshape6 < 1.5) {\n  lv6 = 1 - 4 * abs(lp6 - 0.5);\n} else if (lshape6 < 2.5) {\n  lv6 = lp6 * 2 - 1;\n} else if (lshape6 < 3.5) {\n  if (lp6 < 0.5) { lv6 = 1; } else { lv6 = -1; }\n} else {\n  ra6 = sin(nc6 * 12.9898 + 6 * 78.233) * 43758.5453;\n  ra6 = (ra6 - floor(ra6)) * 2 - 1;\n  rb6 = sin((nc6 + 1) * 12.9898 + 6 * 78.233) * 43758.5453;\n  rb6 = (rb6 - floor(rb6)) * 2 - 1;\n  if (lshape6 < 4.5) {\n    lv6 = ra6;\n  } else {\n    sm6 = lp6 * lp6 * (3 - 2 * lp6);\n    lv6 = ra6 + (rb6 - ra6) * sm6;\n  }\n}\nmv6 = lv6 * ldepth6;\n}\nlv7 = 0;\nmv7 = 0;\nif (lon7 > 0.5) {\nif (lsync7 > 0.5) {\n  xx7 = bc * lcpb7;\n  nc7 = floor(xx7);\n  lp7 = xx7 - nc7;\n} else {\n  lp7 = lp7 + lrate7 / sr;\n  if (lp7 >= 1) { lp7 = lp7 - 1; nc7 = nc7 + 1; }\n}\nif (lshape7 < 0.5) {\n  lv7 = sin(twopi * lp7);\n} else if (lshape7 < 1.5) {\n  lv7 = 1 - 4 * abs(lp7 - 0.5);\n} else if (lshape7 < 2.5) {\n  lv7 = lp7 * 2 - 1;\n} else if (lshape7 < 3.5) {\n  if (lp7 < 0.5) { lv7 = 1; } else { lv7 = -1; }\n} else {\n  ra7 = sin(nc7 * 12.9898 + 7 * 78.233) * 43758.5453;\n  ra7 = (ra7 - floor(ra7)) * 2 - 1;\n  rb7 = sin((nc7 + 1) * 12.9898 + 7 * 78.233) * 43758.5453;\n  rb7 = (rb7 - floor(rb7)) * 2 - 1;\n  if (lshape7 < 4.5) {\n    lv7 = ra7;\n  } else {\n    sm7 = lp7 * lp7 * (3 - 2 * lp7);\n    lv7 = ra7 + (rb7 - ra7) * sm7;\n  }\n}\nmv7 = lv7 * ldepth7;\n}\nlv8 = 0;\nmv8 = 0;\nif (lon8 > 0.5) {\nif (lsync8 > 0.5) {\n  xx8 = bc * lcpb8;\n  nc8 = floor(xx8);\n  lp8 = xx8 - nc8;\n} else {\n  lp8 = lp8 + lrate8 / sr;\n  if (lp8 >= 1) { lp8 = lp8 - 1; nc8 = nc8 + 1; }\n}\nif (lshape8 < 0.5) {\n  lv8 = sin(twopi * lp8);\n} else if (lshape8 < 1.5) {\n  lv8 = 1 - 4 * abs(lp8 - 0.5);\n} else if (lshape8 < 2.5) {\n  lv8 = lp8 * 2 - 1;\n} else if (lshape8 < 3.5) {\n  if (lp8 < 0.5) { lv8 = 1; } else { lv8 = -1; }\n} else {\n  ra8 = sin(nc8 * 12.9898 + 8 * 78.233) * 43758.5453;\n  ra8 = (ra8 - floor(ra8)) * 2 - 1;\n  rb8 = sin((nc8 + 1) * 12.9898 + 8 * 78.233) * 43758.5453;\n  rb8 = (rb8 - floor(rb8)) * 2 - 1;\n  if (lshape8 < 4.5) {\n    lv8 = ra8;\n  } else {\n    sm8 = lp8 * lp8 * (3 - 2 * lp8);\n    lv8 = ra8 + (rb8 - ra8) * sm8;\n  }\n}\nmv8 = lv8 * ldepth8;\n}\nlv9 = 0;\nmv9 = 0;\nif (lon9 > 0.5) {\nif (lsync9 > 0.5) {\n  xx9 = bc * lcpb9;\n  nc9 = floor(xx9);\n  lp9 = xx9 - nc9;\n} else {\n  lp9 = lp9 + lrate9 / sr;\n  if (lp9 >= 1) { lp9 = lp9 - 1; nc9 = nc9 + 1; }\n}\nif (lshape9 < 0.5) {\n  lv9 = sin(twopi * lp9);\n} else if (lshape9 < 1.5) {\n  lv9 = 1 - 4 * abs(lp9 - 0.5);\n} else if (lshape9 < 2.5) {\n  lv9 = lp9 * 2 - 1;\n} else if (lshape9 < 3.5) {\n  if (lp9 < 0.5) { lv9 = 1; } else { lv9 = -1; }\n} else {\n  ra9 = sin(nc9 * 12.9898 + 9 * 78.233) * 43758.5453;\n  ra9 = (ra9 - floor(ra9)) * 2 - 1;\n  rb9 = sin((nc9 + 1) * 12.9898 + 9 * 78.233) * 43758.5453;\n  rb9 = (rb9 - floor(rb9)) * 2 - 1;\n  if (lshape9 < 4.5) {\n    lv9 = ra9;\n  } else {\n    sm9 = lp9 * lp9 * (3 - 2 * lp9);\n    lv9 = ra9 + (rb9 - ra9) * sm9;\n  }\n}\nmv9 = lv9 * ldepth9;\n}\n\n// ---- effective (modulated) parameters\nanyon = lon0 + lon1 + lon2 + lon3 + lon4 + lon5 + lon6 + lon7 + lon8 + lon9;\ne_pitch = pitch;\ne_pmod = pmod;\ne_pdec = pdec;\ne_fm = fm;\ne_pos = pos;\ne_pd = pd;\ne_wfold = wfold;\ne_syncamt = syncamt;\ne_morph = morph;\ne_noiseamt = noiseamt;\ne_cutoff = cutoff;\ne_reso = reso;\ne_fenv = fenv;\ne_att = att;\ne_dec = dec;\ne_sus = sus;\ne_rel = rel;\ne_lend = lend;\ne_drive = drive;\ne_comp = comp;\ne_mixamt = mixamt;\ne_panpos = panpos;\nif (anyon > 0.5) {\n  m_pitch = (ltgt0 == 1) * mv0 + (ltgt1 == 1) * mv1 + (ltgt2 == 1) * mv2 + (ltgt3 == 1) * mv3 + (ltgt4 == 1) * mv4 + (ltgt5 == 1) * mv5 + (ltgt6 == 1) * mv6 + (ltgt7 == 1) * mv7 + (ltgt8 == 1) * mv8 + (ltgt9 == 1) * mv9;\n  e_pitch = clip(pitch + m_pitch * 24, 12, 96);\n  m_pmod = (ltgt0 == 2) * mv0 + (ltgt1 == 2) * mv1 + (ltgt2 == 2) * mv2 + (ltgt3 == 2) * mv3 + (ltgt4 == 2) * mv4 + (ltgt5 == 2) * mv5 + (ltgt6 == 2) * mv6 + (ltgt7 == 2) * mv7 + (ltgt8 == 2) * mv8 + (ltgt9 == 2) * mv9;\n  e_pmod = clip(pmod + m_pmod * 48, -48, 48);\n  m_pdec = (ltgt0 == 3) * mv0 + (ltgt1 == 3) * mv1 + (ltgt2 == 3) * mv2 + (ltgt3 == 3) * mv3 + (ltgt4 == 3) * mv4 + (ltgt5 == 3) * mv5 + (ltgt6 == 3) * mv6 + (ltgt7 == 3) * mv7 + (ltgt8 == 3) * mv8 + (ltgt9 == 3) * mv9;\n  e_pdec = clip(pdec * pow(2, m_pdec * 3), 2, 1000);\n  m_fm = (ltgt0 == 4) * mv0 + (ltgt1 == 4) * mv1 + (ltgt2 == 4) * mv2 + (ltgt3 == 4) * mv3 + (ltgt4 == 4) * mv4 + (ltgt5 == 4) * mv5 + (ltgt6 == 4) * mv6 + (ltgt7 == 4) * mv7 + (ltgt8 == 4) * mv8 + (ltgt9 == 4) * mv9;\n  e_fm = clip(fm + m_fm * 1, 0, 1);\n  m_pos = (ltgt0 == 5) * mv0 + (ltgt1 == 5) * mv1 + (ltgt2 == 5) * mv2 + (ltgt3 == 5) * mv3 + (ltgt4 == 5) * mv4 + (ltgt5 == 5) * mv5 + (ltgt6 == 5) * mv6 + (ltgt7 == 5) * mv7 + (ltgt8 == 5) * mv8 + (ltgt9 == 5) * mv9;\n  e_pos = clip(pos + m_pos * 1, 0, 1);\n  m_pd = (ltgt0 == 6) * mv0 + (ltgt1 == 6) * mv1 + (ltgt2 == 6) * mv2 + (ltgt3 == 6) * mv3 + (ltgt4 == 6) * mv4 + (ltgt5 == 6) * mv5 + (ltgt6 == 6) * mv6 + (ltgt7 == 6) * mv7 + (ltgt8 == 6) * mv8 + (ltgt9 == 6) * mv9;\n  e_pd = clip(pd + m_pd * 100, -100, 100);\n  m_wfold = (ltgt0 == 7) * mv0 + (ltgt1 == 7) * mv1 + (ltgt2 == 7) * mv2 + (ltgt3 == 7) * mv3 + (ltgt4 == 7) * mv4 + (ltgt5 == 7) * mv5 + (ltgt6 == 7) * mv6 + (ltgt7 == 7) * mv7 + (ltgt8 == 7) * mv8 + (ltgt9 == 7) * mv9;\n  e_wfold = clip(wfold + m_wfold * 1, 0, 1);\n  m_syncamt = (ltgt0 == 8) * mv0 + (ltgt1 == 8) * mv1 + (ltgt2 == 8) * mv2 + (ltgt3 == 8) * mv3 + (ltgt4 == 8) * mv4 + (ltgt5 == 8) * mv5 + (ltgt6 == 8) * mv6 + (ltgt7 == 8) * mv7 + (ltgt8 == 8) * mv8 + (ltgt9 == 8) * mv9;\n  e_syncamt = clip(syncamt + m_syncamt * 1, 0, 1);\n  m_morph = (ltgt0 == 9) * mv0 + (ltgt1 == 9) * mv1 + (ltgt2 == 9) * mv2 + (ltgt3 == 9) * mv3 + (ltgt4 == 9) * mv4 + (ltgt5 == 9) * mv5 + (ltgt6 == 9) * mv6 + (ltgt7 == 9) * mv7 + (ltgt8 == 9) * mv8 + (ltgt9 == 9) * mv9;\n  e_morph = clip(morph + m_morph * 16, 0, 31);\n  m_noiseamt = (ltgt0 == 10) * mv0 + (ltgt1 == 10) * mv1 + (ltgt2 == 10) * mv2 + (ltgt3 == 10) * mv3 + (ltgt4 == 10) * mv4 + (ltgt5 == 10) * mv5 + (ltgt6 == 10) * mv6 + (ltgt7 == 10) * mv7 + (ltgt8 == 10) * mv8 + (ltgt9 == 10) * mv9;\n  e_noiseamt = clip(noiseamt + m_noiseamt * 1, 0, 1);\n  m_cutoff = (ltgt0 == 11) * mv0 + (ltgt1 == 11) * mv1 + (ltgt2 == 11) * mv2 + (ltgt3 == 11) * mv3 + (ltgt4 == 11) * mv4 + (ltgt5 == 11) * mv5 + (ltgt6 == 11) * mv6 + (ltgt7 == 11) * mv7 + (ltgt8 == 11) * mv8 + (ltgt9 == 11) * mv9;\n  e_cutoff = clip(cutoff * pow(2, m_cutoff * 5), 20, 20000);\n  m_reso = (ltgt0 == 12) * mv0 + (ltgt1 == 12) * mv1 + (ltgt2 == 12) * mv2 + (ltgt3 == 12) * mv3 + (ltgt4 == 12) * mv4 + (ltgt5 == 12) * mv5 + (ltgt6 == 12) * mv6 + (ltgt7 == 12) * mv7 + (ltgt8 == 12) * mv8 + (ltgt9 == 12) * mv9;\n  e_reso = clip(reso + m_reso * 1, 0, 1);\n  m_fenv = (ltgt0 == 13) * mv0 + (ltgt1 == 13) * mv1 + (ltgt2 == 13) * mv2 + (ltgt3 == 13) * mv3 + (ltgt4 == 13) * mv4 + (ltgt5 == 13) * mv5 + (ltgt6 == 13) * mv6 + (ltgt7 == 13) * mv7 + (ltgt8 == 13) * mv8 + (ltgt9 == 13) * mv9;\n  e_fenv = clip(fenv + m_fenv * 2, -1, 1);\n  m_att = (ltgt0 == 14) * mv0 + (ltgt1 == 14) * mv1 + (ltgt2 == 14) * mv2 + (ltgt3 == 14) * mv3 + (ltgt4 == 14) * mv4 + (ltgt5 == 14) * mv5 + (ltgt6 == 14) * mv6 + (ltgt7 == 14) * mv7 + (ltgt8 == 14) * mv8 + (ltgt9 == 14) * mv9;\n  e_att = clip(att * pow(2, m_att * 4), 0.1, 2000);\n  m_dec = (ltgt0 == 15) * mv0 + (ltgt1 == 15) * mv1 + (ltgt2 == 15) * mv2 + (ltgt3 == 15) * mv3 + (ltgt4 == 15) * mv4 + (ltgt5 == 15) * mv5 + (ltgt6 == 15) * mv6 + (ltgt7 == 15) * mv7 + (ltgt8 == 15) * mv8 + (ltgt9 == 15) * mv9;\n  e_dec = clip(dec * pow(2, m_dec * 4), 2, 4000);\n  m_sus = (ltgt0 == 16) * mv0 + (ltgt1 == 16) * mv1 + (ltgt2 == 16) * mv2 + (ltgt3 == 16) * mv3 + (ltgt4 == 16) * mv4 + (ltgt5 == 16) * mv5 + (ltgt6 == 16) * mv6 + (ltgt7 == 16) * mv7 + (ltgt8 == 16) * mv8 + (ltgt9 == 16) * mv9;\n  e_sus = clip(sus + m_sus * 1, 0, 1);\n  m_rel = (ltgt0 == 17) * mv0 + (ltgt1 == 17) * mv1 + (ltgt2 == 17) * mv2 + (ltgt3 == 17) * mv3 + (ltgt4 == 17) * mv4 + (ltgt5 == 17) * mv5 + (ltgt6 == 17) * mv6 + (ltgt7 == 17) * mv7 + (ltgt8 == 17) * mv8 + (ltgt9 == 17) * mv9;\n  e_rel = clip(rel * pow(2, m_rel * 4), 2, 4000);\n  m_lend = (ltgt0 == 18) * mv0 + (ltgt1 == 18) * mv1 + (ltgt2 == 18) * mv2 + (ltgt3 == 18) * mv3 + (ltgt4 == 18) * mv4 + (ltgt5 == 18) * mv5 + (ltgt6 == 18) * mv6 + (ltgt7 == 18) * mv7 + (ltgt8 == 18) * mv8 + (ltgt9 == 18) * mv9;\n  e_lend = clip(lend + m_lend * 1, 0.03, 1);\n  m_drive = (ltgt0 == 19) * mv0 + (ltgt1 == 19) * mv1 + (ltgt2 == 19) * mv2 + (ltgt3 == 19) * mv3 + (ltgt4 == 19) * mv4 + (ltgt5 == 19) * mv5 + (ltgt6 == 19) * mv6 + (ltgt7 == 19) * mv7 + (ltgt8 == 19) * mv8 + (ltgt9 == 19) * mv9;\n  e_drive = clip(drive + m_drive * 1, 0, 1);\n  m_comp = (ltgt0 == 20) * mv0 + (ltgt1 == 20) * mv1 + (ltgt2 == 20) * mv2 + (ltgt3 == 20) * mv3 + (ltgt4 == 20) * mv4 + (ltgt5 == 20) * mv5 + (ltgt6 == 20) * mv6 + (ltgt7 == 20) * mv7 + (ltgt8 == 20) * mv8 + (ltgt9 == 20) * mv9;\n  e_comp = clip(comp + m_comp * 1, 0, 1);\n  m_mixamt = (ltgt0 == 21) * mv0 + (ltgt1 == 21) * mv1 + (ltgt2 == 21) * mv2 + (ltgt3 == 21) * mv3 + (ltgt4 == 21) * mv4 + (ltgt5 == 21) * mv5 + (ltgt6 == 21) * mv6 + (ltgt7 == 21) * mv7 + (ltgt8 == 21) * mv8 + (ltgt9 == 21) * mv9;\n  e_mixamt = clip(mixamt + m_mixamt * 1, 0, 1);\n  m_panpos = (ltgt0 == 22) * mv0 + (ltgt1 == 22) * mv1 + (ltgt2 == 22) * mv2 + (ltgt3 == 22) * mv3 + (ltgt4 == 22) * mv4 + (ltgt5 == 22) * mv5 + (ltgt6 == 22) * mv6 + (ltgt7 == 22) * mv7 + (ltgt8 == 22) * mv8 + (ltgt9 == 22) * mv9;\n  e_panpos = clip(panpos + m_panpos * 2, -1, 1);\n}\n\n// ---- shared envelope / wavetable setup\na = max(e_att * 0.001, 0.0003);\nd = max(e_dec * 0.001, 0.001);\nrs = max(e_rel * 0.001 * sr, 1);\npa = floor(e_morph);\npb = min(31, pa + 1);\npmix = e_morph - pa;\nbb = 0.5 + 0.47 * clip(e_pd * 0.01, -1, 1);\nvsum = 0;\n\n// ---- voice 0\nif (g0 > 0.5) {\n  if (t0 >= gt0) { g0 = 0; relv0 = lastenv0; rt0 = 0; }\n}\nenv = 0;\nact = 0;\nts = t0 / sr;\nif (g0 > 0.5) {\n  act = 1;\n  te = ts;\n  if (loopon > 0.5) {\n    L = max((a + d) * e_lend, 0.0008);\n    te = ts - floor(ts / L) * L;\n  }\n  if (te < a) {\n    env = te / a;\n  } else if (te < a + d) {\n    x2 = (te - a) / d;\n    env = e_sus + (1 - e_sus) * (1 - x2) * (1 - x2);\n  } else {\n    env = e_sus;\n  }\n} else {\n  if (rt0 < rs) {\n    act = 1;\n    rt0 = rt0 + 1;\n    r = clip(1 - rt0 / rs, 0, 1);\n    env = relv0 * r * r;\n  }\n}\nlastenv0 = env;\nif (act > 0.5) {\n  t0 = min(t0 + 1, 100000000);\n  tp = ts;\n  if (g0 > 0.5) {\n    if (loopon > 0.5) { tp = te; }\n  }\n  pe = exp(-tp * 3 / max(e_pdec * 0.001, 0.001));\n  semi = e_pitch + hp0 + e_pmod * pe;\n  frq = clip(mtof(semi), 1, sr * 0.45);\n  inc = frq / sr;\n  ph0 = ph0 + inc;\n  ph0 = ph0 - floor(ph0);\n  mph0 = mph0 + inc * 3.01;\n  mph0 = mph0 - floor(mph0);\n  sp = ph0 * (1 + e_syncamt * 7);\n  sp = sp - floor(sp);\n  sp = sp + e_fm * 0.35 * sin(twopi * mph0);\n  sp = sp - floor(sp);\n  if (sp < bb) {\n    sp2 = 0.5 * sp / bb;\n  } else {\n    sp2 = 0.5 + 0.5 * (sp - bb) / (1 - bb);\n  }\n  pz = clip(e_pos + hpos0, 0, 1);\n  fr = pz * 7;\n  f0 = floor(fr);\n  f1 = min(7, f0 + 1);\n  fmix = fr - f0;\n  idx = sp2 * 2048;\n  i0 = min(2047, floor(idx));\n  fi = idx - i0;\n  i1 = i0 + 1;\n  if (i1 >= 2048) { i1 = 0; }\n  oa0 = (pa * 8 + f0) * 2048;\n  oa1 = (pa * 8 + f1) * 2048;\n  ob0 = (pb * 8 + f0) * 2048;\n  ob1 = (pb * 8 + f1) * 2048;\n  s00 = peek(wt, oa0 + i0, 0);\n  s01 = peek(wt, oa0 + i1, 0);\n  s10 = peek(wt, oa1 + i0, 0);\n  s11 = peek(wt, oa1 + i1, 0);\n  u00 = peek(wt, ob0 + i0, 0);\n  u01 = peek(wt, ob0 + i1, 0);\n  u10 = peek(wt, ob1 + i0, 0);\n  u11 = peek(wt, ob1 + i1, 0);\n  wa0 = s00 + (s01 - s00) * fi;\n  wa1 = s10 + (s11 - s10) * fi;\n  wb0 = u00 + (u01 - u00) * fi;\n  wb1 = u10 + (u11 - u10) * fi;\n  wa = wa0 + (wa1 - wa0) * fmix;\n  wb = wb0 + (wb1 - wb0) * fmix;\n  x = wa + (wb - wa) * pmix;\n  x = fold(x * (1 + e_wfold * 9), -1, 1);\n  x = x * (1 - e_noiseamt * 0.6) + noise() * e_noiseamt * 0.7;\n  fc = clip(e_cutoff * pow(2, e_fenv * 5 * env), 20, sr * 0.42);\n  ff = 2 * sin(pi * fc / (2 * sr));\n  qd = 2 * (1 - e_reso * 0.96);\n  for (i = 0; i < 2; i += 1) {\n    lowv0 = clip(lowv0 + ff * bandv0, -8, 8);\n    hi = x - lowv0 - qd * bandv0;\n    bandv0 = clip(bandv0 + ff * hi, -8, 8);\n  }\n  vsum = vsum + lowv0 * env * hv0;\n}\n\n\n// ---- voice 1\nif (g1 > 0.5) {\n  if (t1 >= gt1) { g1 = 0; relv1 = lastenv1; rt1 = 0; }\n}\nenv = 0;\nact = 0;\nts = t1 / sr;\nif (g1 > 0.5) {\n  act = 1;\n  te = ts;\n  if (loopon > 0.5) {\n    L = max((a + d) * e_lend, 0.0008);\n    te = ts - floor(ts / L) * L;\n  }\n  if (te < a) {\n    env = te / a;\n  } else if (te < a + d) {\n    x2 = (te - a) / d;\n    env = e_sus + (1 - e_sus) * (1 - x2) * (1 - x2);\n  } else {\n    env = e_sus;\n  }\n} else {\n  if (rt1 < rs) {\n    act = 1;\n    rt1 = rt1 + 1;\n    r = clip(1 - rt1 / rs, 0, 1);\n    env = relv1 * r * r;\n  }\n}\nlastenv1 = env;\nif (act > 0.5) {\n  t1 = min(t1 + 1, 100000000);\n  tp = ts;\n  if (g1 > 0.5) {\n    if (loopon > 0.5) { tp = te; }\n  }\n  pe = exp(-tp * 3 / max(e_pdec * 0.001, 0.001));\n  semi = e_pitch + hp1 + e_pmod * pe;\n  frq = clip(mtof(semi), 1, sr * 0.45);\n  inc = frq / sr;\n  ph1 = ph1 + inc;\n  ph1 = ph1 - floor(ph1);\n  mph1 = mph1 + inc * 3.01;\n  mph1 = mph1 - floor(mph1);\n  sp = ph1 * (1 + e_syncamt * 7);\n  sp = sp - floor(sp);\n  sp = sp + e_fm * 0.35 * sin(twopi * mph1);\n  sp = sp - floor(sp);\n  if (sp < bb) {\n    sp2 = 0.5 * sp / bb;\n  } else {\n    sp2 = 0.5 + 0.5 * (sp - bb) / (1 - bb);\n  }\n  pz = clip(e_pos + hpos1, 0, 1);\n  fr = pz * 7;\n  f0 = floor(fr);\n  f1 = min(7, f0 + 1);\n  fmix = fr - f0;\n  idx = sp2 * 2048;\n  i0 = min(2047, floor(idx));\n  fi = idx - i0;\n  i1 = i0 + 1;\n  if (i1 >= 2048) { i1 = 0; }\n  oa0 = (pa * 8 + f0) * 2048;\n  oa1 = (pa * 8 + f1) * 2048;\n  ob0 = (pb * 8 + f0) * 2048;\n  ob1 = (pb * 8 + f1) * 2048;\n  s00 = peek(wt, oa0 + i0, 0);\n  s01 = peek(wt, oa0 + i1, 0);\n  s10 = peek(wt, oa1 + i0, 0);\n  s11 = peek(wt, oa1 + i1, 0);\n  u00 = peek(wt, ob0 + i0, 0);\n  u01 = peek(wt, ob0 + i1, 0);\n  u10 = peek(wt, ob1 + i0, 0);\n  u11 = peek(wt, ob1 + i1, 0);\n  wa0 = s00 + (s01 - s00) * fi;\n  wa1 = s10 + (s11 - s10) * fi;\n  wb0 = u00 + (u01 - u00) * fi;\n  wb1 = u10 + (u11 - u10) * fi;\n  wa = wa0 + (wa1 - wa0) * fmix;\n  wb = wb0 + (wb1 - wb0) * fmix;\n  x = wa + (wb - wa) * pmix;\n  x = fold(x * (1 + e_wfold * 9), -1, 1);\n  x = x * (1 - e_noiseamt * 0.6) + noise() * e_noiseamt * 0.7;\n  fc = clip(e_cutoff * pow(2, e_fenv * 5 * env), 20, sr * 0.42);\n  ff = 2 * sin(pi * fc / (2 * sr));\n  qd = 2 * (1 - e_reso * 0.96);\n  for (i = 0; i < 2; i += 1) {\n    lowv1 = clip(lowv1 + ff * bandv1, -8, 8);\n    hi = x - lowv1 - qd * bandv1;\n    bandv1 = clip(bandv1 + ff * hi, -8, 8);\n  }\n  vsum = vsum + lowv1 * env * hv1;\n}\n\n\n// ---- voice 2\nif (g2 > 0.5) {\n  if (t2 >= gt2) { g2 = 0; relv2 = lastenv2; rt2 = 0; }\n}\nenv = 0;\nact = 0;\nts = t2 / sr;\nif (g2 > 0.5) {\n  act = 1;\n  te = ts;\n  if (loopon > 0.5) {\n    L = max((a + d) * e_lend, 0.0008);\n    te = ts - floor(ts / L) * L;\n  }\n  if (te < a) {\n    env = te / a;\n  } else if (te < a + d) {\n    x2 = (te - a) / d;\n    env = e_sus + (1 - e_sus) * (1 - x2) * (1 - x2);\n  } else {\n    env = e_sus;\n  }\n} else {\n  if (rt2 < rs) {\n    act = 1;\n    rt2 = rt2 + 1;\n    r = clip(1 - rt2 / rs, 0, 1);\n    env = relv2 * r * r;\n  }\n}\nlastenv2 = env;\nif (act > 0.5) {\n  t2 = min(t2 + 1, 100000000);\n  tp = ts;\n  if (g2 > 0.5) {\n    if (loopon > 0.5) { tp = te; }\n  }\n  pe = exp(-tp * 3 / max(e_pdec * 0.001, 0.001));\n  semi = e_pitch + hp2 + e_pmod * pe;\n  frq = clip(mtof(semi), 1, sr * 0.45);\n  inc = frq / sr;\n  ph2 = ph2 + inc;\n  ph2 = ph2 - floor(ph2);\n  mph2 = mph2 + inc * 3.01;\n  mph2 = mph2 - floor(mph2);\n  sp = ph2 * (1 + e_syncamt * 7);\n  sp = sp - floor(sp);\n  sp = sp + e_fm * 0.35 * sin(twopi * mph2);\n  sp = sp - floor(sp);\n  if (sp < bb) {\n    sp2 = 0.5 * sp / bb;\n  } else {\n    sp2 = 0.5 + 0.5 * (sp - bb) / (1 - bb);\n  }\n  pz = clip(e_pos + hpos2, 0, 1);\n  fr = pz * 7;\n  f0 = floor(fr);\n  f1 = min(7, f0 + 1);\n  fmix = fr - f0;\n  idx = sp2 * 2048;\n  i0 = min(2047, floor(idx));\n  fi = idx - i0;\n  i1 = i0 + 1;\n  if (i1 >= 2048) { i1 = 0; }\n  oa0 = (pa * 8 + f0) * 2048;\n  oa1 = (pa * 8 + f1) * 2048;\n  ob0 = (pb * 8 + f0) * 2048;\n  ob1 = (pb * 8 + f1) * 2048;\n  s00 = peek(wt, oa0 + i0, 0);\n  s01 = peek(wt, oa0 + i1, 0);\n  s10 = peek(wt, oa1 + i0, 0);\n  s11 = peek(wt, oa1 + i1, 0);\n  u00 = peek(wt, ob0 + i0, 0);\n  u01 = peek(wt, ob0 + i1, 0);\n  u10 = peek(wt, ob1 + i0, 0);\n  u11 = peek(wt, ob1 + i1, 0);\n  wa0 = s00 + (s01 - s00) * fi;\n  wa1 = s10 + (s11 - s10) * fi;\n  wb0 = u00 + (u01 - u00) * fi;\n  wb1 = u10 + (u11 - u10) * fi;\n  wa = wa0 + (wa1 - wa0) * fmix;\n  wb = wb0 + (wb1 - wb0) * fmix;\n  x = wa + (wb - wa) * pmix;\n  x = fold(x * (1 + e_wfold * 9), -1, 1);\n  x = x * (1 - e_noiseamt * 0.6) + noise() * e_noiseamt * 0.7;\n  fc = clip(e_cutoff * pow(2, e_fenv * 5 * env), 20, sr * 0.42);\n  ff = 2 * sin(pi * fc / (2 * sr));\n  qd = 2 * (1 - e_reso * 0.96);\n  for (i = 0; i < 2; i += 1) {\n    lowv2 = clip(lowv2 + ff * bandv2, -8, 8);\n    hi = x - lowv2 - qd * bandv2;\n    bandv2 = clip(bandv2 + ff * hi, -8, 8);\n  }\n  vsum = vsum + lowv2 * env * hv2;\n}\n\n\n// ---- voice 3\nif (g3 > 0.5) {\n  if (t3 >= gt3) { g3 = 0; relv3 = lastenv3; rt3 = 0; }\n}\nenv = 0;\nact = 0;\nts = t3 / sr;\nif (g3 > 0.5) {\n  act = 1;\n  te = ts;\n  if (loopon > 0.5) {\n    L = max((a + d) * e_lend, 0.0008);\n    te = ts - floor(ts / L) * L;\n  }\n  if (te < a) {\n    env = te / a;\n  } else if (te < a + d) {\n    x2 = (te - a) / d;\n    env = e_sus + (1 - e_sus) * (1 - x2) * (1 - x2);\n  } else {\n    env = e_sus;\n  }\n} else {\n  if (rt3 < rs) {\n    act = 1;\n    rt3 = rt3 + 1;\n    r = clip(1 - rt3 / rs, 0, 1);\n    env = relv3 * r * r;\n  }\n}\nlastenv3 = env;\nif (act > 0.5) {\n  t3 = min(t3 + 1, 100000000);\n  tp = ts;\n  if (g3 > 0.5) {\n    if (loopon > 0.5) { tp = te; }\n  }\n  pe = exp(-tp * 3 / max(e_pdec * 0.001, 0.001));\n  semi = e_pitch + hp3 + e_pmod * pe;\n  frq = clip(mtof(semi), 1, sr * 0.45);\n  inc = frq / sr;\n  ph3 = ph3 + inc;\n  ph3 = ph3 - floor(ph3);\n  mph3 = mph3 + inc * 3.01;\n  mph3 = mph3 - floor(mph3);\n  sp = ph3 * (1 + e_syncamt * 7);\n  sp = sp - floor(sp);\n  sp = sp + e_fm * 0.35 * sin(twopi * mph3);\n  sp = sp - floor(sp);\n  if (sp < bb) {\n    sp2 = 0.5 * sp / bb;\n  } else {\n    sp2 = 0.5 + 0.5 * (sp - bb) / (1 - bb);\n  }\n  pz = clip(e_pos + hpos3, 0, 1);\n  fr = pz * 7;\n  f0 = floor(fr);\n  f1 = min(7, f0 + 1);\n  fmix = fr - f0;\n  idx = sp2 * 2048;\n  i0 = min(2047, floor(idx));\n  fi = idx - i0;\n  i1 = i0 + 1;\n  if (i1 >= 2048) { i1 = 0; }\n  oa0 = (pa * 8 + f0) * 2048;\n  oa1 = (pa * 8 + f1) * 2048;\n  ob0 = (pb * 8 + f0) * 2048;\n  ob1 = (pb * 8 + f1) * 2048;\n  s00 = peek(wt, oa0 + i0, 0);\n  s01 = peek(wt, oa0 + i1, 0);\n  s10 = peek(wt, oa1 + i0, 0);\n  s11 = peek(wt, oa1 + i1, 0);\n  u00 = peek(wt, ob0 + i0, 0);\n  u01 = peek(wt, ob0 + i1, 0);\n  u10 = peek(wt, ob1 + i0, 0);\n  u11 = peek(wt, ob1 + i1, 0);\n  wa0 = s00 + (s01 - s00) * fi;\n  wa1 = s10 + (s11 - s10) * fi;\n  wb0 = u00 + (u01 - u00) * fi;\n  wb1 = u10 + (u11 - u10) * fi;\n  wa = wa0 + (wa1 - wa0) * fmix;\n  wb = wb0 + (wb1 - wb0) * fmix;\n  x = wa + (wb - wa) * pmix;\n  x = fold(x * (1 + e_wfold * 9), -1, 1);\n  x = x * (1 - e_noiseamt * 0.6) + noise() * e_noiseamt * 0.7;\n  fc = clip(e_cutoff * pow(2, e_fenv * 5 * env), 20, sr * 0.42);\n  ff = 2 * sin(pi * fc / (2 * sr));\n  qd = 2 * (1 - e_reso * 0.96);\n  for (i = 0; i < 2; i += 1) {\n    lowv3 = clip(lowv3 + ff * bandv3, -8, 8);\n    hi = x - lowv3 - qd * bandv3;\n    bandv3 = clip(bandv3 + ff * hi, -8, 8);\n  }\n  vsum = vsum + lowv3 * env * hv3;\n}\n\n\n// ---- voice 4\nif (g4 > 0.5) {\n  if (t4 >= gt4) { g4 = 0; relv4 = lastenv4; rt4 = 0; }\n}\nenv = 0;\nact = 0;\nts = t4 / sr;\nif (g4 > 0.5) {\n  act = 1;\n  te = ts;\n  if (loopon > 0.5) {\n    L = max((a + d) * e_lend, 0.0008);\n    te = ts - floor(ts / L) * L;\n  }\n  if (te < a) {\n    env = te / a;\n  } else if (te < a + d) {\n    x2 = (te - a) / d;\n    env = e_sus + (1 - e_sus) * (1 - x2) * (1 - x2);\n  } else {\n    env = e_sus;\n  }\n} else {\n  if (rt4 < rs) {\n    act = 1;\n    rt4 = rt4 + 1;\n    r = clip(1 - rt4 / rs, 0, 1);\n    env = relv4 * r * r;\n  }\n}\nlastenv4 = env;\nif (act > 0.5) {\n  t4 = min(t4 + 1, 100000000);\n  tp = ts;\n  if (g4 > 0.5) {\n    if (loopon > 0.5) { tp = te; }\n  }\n  pe = exp(-tp * 3 / max(e_pdec * 0.001, 0.001));\n  semi = e_pitch + hp4 + e_pmod * pe;\n  frq = clip(mtof(semi), 1, sr * 0.45);\n  inc = frq / sr;\n  ph4 = ph4 + inc;\n  ph4 = ph4 - floor(ph4);\n  mph4 = mph4 + inc * 3.01;\n  mph4 = mph4 - floor(mph4);\n  sp = ph4 * (1 + e_syncamt * 7);\n  sp = sp - floor(sp);\n  sp = sp + e_fm * 0.35 * sin(twopi * mph4);\n  sp = sp - floor(sp);\n  if (sp < bb) {\n    sp2 = 0.5 * sp / bb;\n  } else {\n    sp2 = 0.5 + 0.5 * (sp - bb) / (1 - bb);\n  }\n  pz = clip(e_pos + hpos4, 0, 1);\n  fr = pz * 7;\n  f0 = floor(fr);\n  f1 = min(7, f0 + 1);\n  fmix = fr - f0;\n  idx = sp2 * 2048;\n  i0 = min(2047, floor(idx));\n  fi = idx - i0;\n  i1 = i0 + 1;\n  if (i1 >= 2048) { i1 = 0; }\n  oa0 = (pa * 8 + f0) * 2048;\n  oa1 = (pa * 8 + f1) * 2048;\n  ob0 = (pb * 8 + f0) * 2048;\n  ob1 = (pb * 8 + f1) * 2048;\n  s00 = peek(wt, oa0 + i0, 0);\n  s01 = peek(wt, oa0 + i1, 0);\n  s10 = peek(wt, oa1 + i0, 0);\n  s11 = peek(wt, oa1 + i1, 0);\n  u00 = peek(wt, ob0 + i0, 0);\n  u01 = peek(wt, ob0 + i1, 0);\n  u10 = peek(wt, ob1 + i0, 0);\n  u11 = peek(wt, ob1 + i1, 0);\n  wa0 = s00 + (s01 - s00) * fi;\n  wa1 = s10 + (s11 - s10) * fi;\n  wb0 = u00 + (u01 - u00) * fi;\n  wb1 = u10 + (u11 - u10) * fi;\n  wa = wa0 + (wa1 - wa0) * fmix;\n  wb = wb0 + (wb1 - wb0) * fmix;\n  x = wa + (wb - wa) * pmix;\n  x = fold(x * (1 + e_wfold * 9), -1, 1);\n  x = x * (1 - e_noiseamt * 0.6) + noise() * e_noiseamt * 0.7;\n  fc = clip(e_cutoff * pow(2, e_fenv * 5 * env), 20, sr * 0.42);\n  ff = 2 * sin(pi * fc / (2 * sr));\n  qd = 2 * (1 - e_reso * 0.96);\n  for (i = 0; i < 2; i += 1) {\n    lowv4 = clip(lowv4 + ff * bandv4, -8, 8);\n    hi = x - lowv4 - qd * bandv4;\n    bandv4 = clip(bandv4 + ff * hi, -8, 8);\n  }\n  vsum = vsum + lowv4 * env * hv4;\n}\n\n\n// ---- voice 5\nif (g5 > 0.5) {\n  if (t5 >= gt5) { g5 = 0; relv5 = lastenv5; rt5 = 0; }\n}\nenv = 0;\nact = 0;\nts = t5 / sr;\nif (g5 > 0.5) {\n  act = 1;\n  te = ts;\n  if (loopon > 0.5) {\n    L = max((a + d) * e_lend, 0.0008);\n    te = ts - floor(ts / L) * L;\n  }\n  if (te < a) {\n    env = te / a;\n  } else if (te < a + d) {\n    x2 = (te - a) / d;\n    env = e_sus + (1 - e_sus) * (1 - x2) * (1 - x2);\n  } else {\n    env = e_sus;\n  }\n} else {\n  if (rt5 < rs) {\n    act = 1;\n    rt5 = rt5 + 1;\n    r = clip(1 - rt5 / rs, 0, 1);\n    env = relv5 * r * r;\n  }\n}\nlastenv5 = env;\nif (act > 0.5) {\n  t5 = min(t5 + 1, 100000000);\n  tp = ts;\n  if (g5 > 0.5) {\n    if (loopon > 0.5) { tp = te; }\n  }\n  pe = exp(-tp * 3 / max(e_pdec * 0.001, 0.001));\n  semi = e_pitch + hp5 + e_pmod * pe;\n  frq = clip(mtof(semi), 1, sr * 0.45);\n  inc = frq / sr;\n  ph5 = ph5 + inc;\n  ph5 = ph5 - floor(ph5);\n  mph5 = mph5 + inc * 3.01;\n  mph5 = mph5 - floor(mph5);\n  sp = ph5 * (1 + e_syncamt * 7);\n  sp = sp - floor(sp);\n  sp = sp + e_fm * 0.35 * sin(twopi * mph5);\n  sp = sp - floor(sp);\n  if (sp < bb) {\n    sp2 = 0.5 * sp / bb;\n  } else {\n    sp2 = 0.5 + 0.5 * (sp - bb) / (1 - bb);\n  }\n  pz = clip(e_pos + hpos5, 0, 1);\n  fr = pz * 7;\n  f0 = floor(fr);\n  f1 = min(7, f0 + 1);\n  fmix = fr - f0;\n  idx = sp2 * 2048;\n  i0 = min(2047, floor(idx));\n  fi = idx - i0;\n  i1 = i0 + 1;\n  if (i1 >= 2048) { i1 = 0; }\n  oa0 = (pa * 8 + f0) * 2048;\n  oa1 = (pa * 8 + f1) * 2048;\n  ob0 = (pb * 8 + f0) * 2048;\n  ob1 = (pb * 8 + f1) * 2048;\n  s00 = peek(wt, oa0 + i0, 0);\n  s01 = peek(wt, oa0 + i1, 0);\n  s10 = peek(wt, oa1 + i0, 0);\n  s11 = peek(wt, oa1 + i1, 0);\n  u00 = peek(wt, ob0 + i0, 0);\n  u01 = peek(wt, ob0 + i1, 0);\n  u10 = peek(wt, ob1 + i0, 0);\n  u11 = peek(wt, ob1 + i1, 0);\n  wa0 = s00 + (s01 - s00) * fi;\n  wa1 = s10 + (s11 - s10) * fi;\n  wb0 = u00 + (u01 - u00) * fi;\n  wb1 = u10 + (u11 - u10) * fi;\n  wa = wa0 + (wa1 - wa0) * fmix;\n  wb = wb0 + (wb1 - wb0) * fmix;\n  x = wa + (wb - wa) * pmix;\n  x = fold(x * (1 + e_wfold * 9), -1, 1);\n  x = x * (1 - e_noiseamt * 0.6) + noise() * e_noiseamt * 0.7;\n  fc = clip(e_cutoff * pow(2, e_fenv * 5 * env), 20, sr * 0.42);\n  ff = 2 * sin(pi * fc / (2 * sr));\n  qd = 2 * (1 - e_reso * 0.96);\n  for (i = 0; i < 2; i += 1) {\n    lowv5 = clip(lowv5 + ff * bandv5, -8, 8);\n    hi = x - lowv5 - qd * bandv5;\n    bandv5 = clip(bandv5 + ff * hi, -8, 8);\n  }\n  vsum = vsum + lowv5 * env * hv5;\n}\n\n\n// ---- voice 6\nif (g6 > 0.5) {\n  if (t6 >= gt6) { g6 = 0; relv6 = lastenv6; rt6 = 0; }\n}\nenv = 0;\nact = 0;\nts = t6 / sr;\nif (g6 > 0.5) {\n  act = 1;\n  te = ts;\n  if (loopon > 0.5) {\n    L = max((a + d) * e_lend, 0.0008);\n    te = ts - floor(ts / L) * L;\n  }\n  if (te < a) {\n    env = te / a;\n  } else if (te < a + d) {\n    x2 = (te - a) / d;\n    env = e_sus + (1 - e_sus) * (1 - x2) * (1 - x2);\n  } else {\n    env = e_sus;\n  }\n} else {\n  if (rt6 < rs) {\n    act = 1;\n    rt6 = rt6 + 1;\n    r = clip(1 - rt6 / rs, 0, 1);\n    env = relv6 * r * r;\n  }\n}\nlastenv6 = env;\nif (act > 0.5) {\n  t6 = min(t6 + 1, 100000000);\n  tp = ts;\n  if (g6 > 0.5) {\n    if (loopon > 0.5) { tp = te; }\n  }\n  pe = exp(-tp * 3 / max(e_pdec * 0.001, 0.001));\n  semi = e_pitch + hp6 + e_pmod * pe;\n  frq = clip(mtof(semi), 1, sr * 0.45);\n  inc = frq / sr;\n  ph6 = ph6 + inc;\n  ph6 = ph6 - floor(ph6);\n  mph6 = mph6 + inc * 3.01;\n  mph6 = mph6 - floor(mph6);\n  sp = ph6 * (1 + e_syncamt * 7);\n  sp = sp - floor(sp);\n  sp = sp + e_fm * 0.35 * sin(twopi * mph6);\n  sp = sp - floor(sp);\n  if (sp < bb) {\n    sp2 = 0.5 * sp / bb;\n  } else {\n    sp2 = 0.5 + 0.5 * (sp - bb) / (1 - bb);\n  }\n  pz = clip(e_pos + hpos6, 0, 1);\n  fr = pz * 7;\n  f0 = floor(fr);\n  f1 = min(7, f0 + 1);\n  fmix = fr - f0;\n  idx = sp2 * 2048;\n  i0 = min(2047, floor(idx));\n  fi = idx - i0;\n  i1 = i0 + 1;\n  if (i1 >= 2048) { i1 = 0; }\n  oa0 = (pa * 8 + f0) * 2048;\n  oa1 = (pa * 8 + f1) * 2048;\n  ob0 = (pb * 8 + f0) * 2048;\n  ob1 = (pb * 8 + f1) * 2048;\n  s00 = peek(wt, oa0 + i0, 0);\n  s01 = peek(wt, oa0 + i1, 0);\n  s10 = peek(wt, oa1 + i0, 0);\n  s11 = peek(wt, oa1 + i1, 0);\n  u00 = peek(wt, ob0 + i0, 0);\n  u01 = peek(wt, ob0 + i1, 0);\n  u10 = peek(wt, ob1 + i0, 0);\n  u11 = peek(wt, ob1 + i1, 0);\n  wa0 = s00 + (s01 - s00) * fi;\n  wa1 = s10 + (s11 - s10) * fi;\n  wb0 = u00 + (u01 - u00) * fi;\n  wb1 = u10 + (u11 - u10) * fi;\n  wa = wa0 + (wa1 - wa0) * fmix;\n  wb = wb0 + (wb1 - wb0) * fmix;\n  x = wa + (wb - wa) * pmix;\n  x = fold(x * (1 + e_wfold * 9), -1, 1);\n  x = x * (1 - e_noiseamt * 0.6) + noise() * e_noiseamt * 0.7;\n  fc = clip(e_cutoff * pow(2, e_fenv * 5 * env), 20, sr * 0.42);\n  ff = 2 * sin(pi * fc / (2 * sr));\n  qd = 2 * (1 - e_reso * 0.96);\n  for (i = 0; i < 2; i += 1) {\n    lowv6 = clip(lowv6 + ff * bandv6, -8, 8);\n    hi = x - lowv6 - qd * bandv6;\n    bandv6 = clip(bandv6 + ff * hi, -8, 8);\n  }\n  vsum = vsum + lowv6 * env * hv6;\n}\n\n\n// ---- voice 7\nif (g7 > 0.5) {\n  if (t7 >= gt7) { g7 = 0; relv7 = lastenv7; rt7 = 0; }\n}\nenv = 0;\nact = 0;\nts = t7 / sr;\nif (g7 > 0.5) {\n  act = 1;\n  te = ts;\n  if (loopon > 0.5) {\n    L = max((a + d) * e_lend, 0.0008);\n    te = ts - floor(ts / L) * L;\n  }\n  if (te < a) {\n    env = te / a;\n  } else if (te < a + d) {\n    x2 = (te - a) / d;\n    env = e_sus + (1 - e_sus) * (1 - x2) * (1 - x2);\n  } else {\n    env = e_sus;\n  }\n} else {\n  if (rt7 < rs) {\n    act = 1;\n    rt7 = rt7 + 1;\n    r = clip(1 - rt7 / rs, 0, 1);\n    env = relv7 * r * r;\n  }\n}\nlastenv7 = env;\nif (act > 0.5) {\n  t7 = min(t7 + 1, 100000000);\n  tp = ts;\n  if (g7 > 0.5) {\n    if (loopon > 0.5) { tp = te; }\n  }\n  pe = exp(-tp * 3 / max(e_pdec * 0.001, 0.001));\n  semi = e_pitch + hp7 + e_pmod * pe;\n  frq = clip(mtof(semi), 1, sr * 0.45);\n  inc = frq / sr;\n  ph7 = ph7 + inc;\n  ph7 = ph7 - floor(ph7);\n  mph7 = mph7 + inc * 3.01;\n  mph7 = mph7 - floor(mph7);\n  sp = ph7 * (1 + e_syncamt * 7);\n  sp = sp - floor(sp);\n  sp = sp + e_fm * 0.35 * sin(twopi * mph7);\n  sp = sp - floor(sp);\n  if (sp < bb) {\n    sp2 = 0.5 * sp / bb;\n  } else {\n    sp2 = 0.5 + 0.5 * (sp - bb) / (1 - bb);\n  }\n  pz = clip(e_pos + hpos7, 0, 1);\n  fr = pz * 7;\n  f0 = floor(fr);\n  f1 = min(7, f0 + 1);\n  fmix = fr - f0;\n  idx = sp2 * 2048;\n  i0 = min(2047, floor(idx));\n  fi = idx - i0;\n  i1 = i0 + 1;\n  if (i1 >= 2048) { i1 = 0; }\n  oa0 = (pa * 8 + f0) * 2048;\n  oa1 = (pa * 8 + f1) * 2048;\n  ob0 = (pb * 8 + f0) * 2048;\n  ob1 = (pb * 8 + f1) * 2048;\n  s00 = peek(wt, oa0 + i0, 0);\n  s01 = peek(wt, oa0 + i1, 0);\n  s10 = peek(wt, oa1 + i0, 0);\n  s11 = peek(wt, oa1 + i1, 0);\n  u00 = peek(wt, ob0 + i0, 0);\n  u01 = peek(wt, ob0 + i1, 0);\n  u10 = peek(wt, ob1 + i0, 0);\n  u11 = peek(wt, ob1 + i1, 0);\n  wa0 = s00 + (s01 - s00) * fi;\n  wa1 = s10 + (s11 - s10) * fi;\n  wb0 = u00 + (u01 - u00) * fi;\n  wb1 = u10 + (u11 - u10) * fi;\n  wa = wa0 + (wa1 - wa0) * fmix;\n  wb = wb0 + (wb1 - wb0) * fmix;\n  x = wa + (wb - wa) * pmix;\n  x = fold(x * (1 + e_wfold * 9), -1, 1);\n  x = x * (1 - e_noiseamt * 0.6) + noise() * e_noiseamt * 0.7;\n  fc = clip(e_cutoff * pow(2, e_fenv * 5 * env), 20, sr * 0.42);\n  ff = 2 * sin(pi * fc / (2 * sr));\n  qd = 2 * (1 - e_reso * 0.96);\n  for (i = 0; i < 2; i += 1) {\n    lowv7 = clip(lowv7 + ff * bandv7, -8, 8);\n    hi = x - lowv7 - qd * bandv7;\n    bandv7 = clip(bandv7 + ff * hi, -8, 8);\n  }\n  vsum = vsum + lowv7 * env * hv7;\n}\n\n\n// ---- DC block + colour FX: drive -> one-knob comp -> mix\ny = vsum;\nyd = y - dcx + 0.995 * dcy;\ndcx = y;\ndcy = yd;\ndry = clip(yd * 0.9, -1.5, 1.5);\ngn = 1 + e_drive * 20;\nw = 0;\nif (dtype < 0.5) {\n  w = tanh(dry * gn);\n} else if (dtype < 1.5) {\n  w = clip(dry * gn, -1, 1) * 0.85;\n} else {\n  w = fold(dry * gn, -1, 1);\n}\nad = abs(w);\nif (cka == 0) {\n  cka = 1 - exp(-1 / (0.001 * sr));\n  ckr = 1 - exp(-1 / (0.09 * sr));\n}\nif (ad > cenv) {\n  cenv = cenv + (ad - cenv) * cka;\n} else {\n  cenv = cenv + (ad - cenv) * ckr;\n}\nthr = 0.8 - 0.7 * e_comp;\nrat = 2 + 10 * e_comp;\ngr = 1;\nif (cenv > thr) {\n  gr = pow(thr / cenv, 1 - 1 / rat);\n}\nw = w * gr * (1 + e_comp * 1.2);\nsig = dry * (1 - e_mixamt) + tanh(w * 0.9) * e_mixamt;\n\n// ---- pan (constant power)\nth = (e_panpos + 1) * pi * 0.25;\nout1 = tanh(sig * cos(th) * 1.414);\nout2 = tanh(sig * sin(th) * 1.414);",
									"fontface": 0,
									"fontname": "<Monospaced>",
									"fontsize": 12.0,
									"id": "obj-1",
									"maxclass": "codebox",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										30,
										100,
										700,
										600
									]
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30,
										720,
										40,
										22
									],
									"text": "out 1"
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										90,
										720,
										40,
										22
									],
									"text": "out 2"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"obj-2",
										0
									],
									"source": [
										"obj-1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-3",
										0
									],
									"source": [
										"obj-1",
										1
									]
								}
							}
						]
					},
					"patching_rect": [
						20,
						900,
						60,
						22
					],
					"saved_object_attributes": {
						"globalpatchername": ""
					},
					"id": "obj-145"
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
					"patching_rect": [
						20,
						980,
						40,
						22
					],
					"id": "obj-146"
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
					"patching_rect": [
						80,
						980,
						40,
						22
					],
					"id": "obj-147"
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
					"patching_rect": [
						150,
						950,
						40,
						22
					],
					"id": "obj-148"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "pack 0. 30",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						150,
						920,
						70,
						22
					],
					"id": "obj-149"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "plugout~",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						20,
						1040,
						60,
						22
					],
					"id": "obj-150"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend morph",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						20,
						120,
						22
					],
					"id": "obj-151"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend pos",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						20,
						120,
						22
					],
					"id": "obj-152"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend pitch",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						20,
						120,
						22
					],
					"id": "obj-153"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend pmod",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						20,
						120,
						22
					],
					"id": "obj-154"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend pdec",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						20,
						120,
						22
					],
					"id": "obj-155"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend fm",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						20,
						120,
						22
					],
					"id": "obj-156"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend pd",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						20,
						120,
						22
					],
					"id": "obj-157"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend wfold",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						20,
						120,
						22
					],
					"id": "obj-158"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend syncamt",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						48,
						120,
						22
					],
					"id": "obj-159"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend poly",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						48,
						120,
						22
					],
					"id": "obj-160"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend noiseamt",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						48,
						120,
						22
					],
					"id": "obj-161"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend cutoff",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						48,
						120,
						22
					],
					"id": "obj-162"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend reso",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						48,
						120,
						22
					],
					"id": "obj-163"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend fenv",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						48,
						120,
						22
					],
					"id": "obj-164"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend att",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						48,
						120,
						22
					],
					"id": "obj-165"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend dec",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						48,
						120,
						22
					],
					"id": "obj-166"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend sus",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						76,
						120,
						22
					],
					"id": "obj-167"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend rel",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						76,
						120,
						22
					],
					"id": "obj-168"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend loopon",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						76,
						120,
						22
					],
					"id": "obj-169"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lend",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						76,
						120,
						22
					],
					"id": "obj-170"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon0",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						76,
						120,
						22
					],
					"id": "obj-171"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape0",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						76,
						120,
						22
					],
					"id": "obj-172"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate0",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						76,
						120,
						22
					],
					"id": "obj-173"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth0",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						76,
						120,
						22
					],
					"id": "obj-174"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync0",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						104,
						120,
						22
					],
					"id": "obj-175"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv0",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						104,
						120,
						22
					],
					"id": "obj-176"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt0",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						104,
						120,
						22
					],
					"id": "obj-177"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon1",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						104,
						120,
						22
					],
					"id": "obj-178"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape1",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						104,
						120,
						22
					],
					"id": "obj-179"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate1",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						104,
						120,
						22
					],
					"id": "obj-180"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth1",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						104,
						120,
						22
					],
					"id": "obj-181"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync1",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						104,
						120,
						22
					],
					"id": "obj-182"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv1",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						132,
						120,
						22
					],
					"id": "obj-183"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt1",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						132,
						120,
						22
					],
					"id": "obj-184"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon2",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						132,
						120,
						22
					],
					"id": "obj-185"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape2",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						132,
						120,
						22
					],
					"id": "obj-186"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate2",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						132,
						120,
						22
					],
					"id": "obj-187"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth2",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						132,
						120,
						22
					],
					"id": "obj-188"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync2",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						132,
						120,
						22
					],
					"id": "obj-189"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv2",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						132,
						120,
						22
					],
					"id": "obj-190"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt2",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						160,
						120,
						22
					],
					"id": "obj-191"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						160,
						120,
						22
					],
					"id": "obj-192"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						160,
						120,
						22
					],
					"id": "obj-193"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						160,
						120,
						22
					],
					"id": "obj-194"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						160,
						120,
						22
					],
					"id": "obj-195"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						160,
						120,
						22
					],
					"id": "obj-196"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						160,
						120,
						22
					],
					"id": "obj-197"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						160,
						120,
						22
					],
					"id": "obj-198"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon4",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						188,
						120,
						22
					],
					"id": "obj-199"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape4",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						188,
						120,
						22
					],
					"id": "obj-200"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate4",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						188,
						120,
						22
					],
					"id": "obj-201"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth4",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						188,
						120,
						22
					],
					"id": "obj-202"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync4",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						188,
						120,
						22
					],
					"id": "obj-203"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv4",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						188,
						120,
						22
					],
					"id": "obj-204"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt4",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						188,
						120,
						22
					],
					"id": "obj-205"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon5",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						188,
						120,
						22
					],
					"id": "obj-206"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape5",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						216,
						120,
						22
					],
					"id": "obj-207"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate5",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						216,
						120,
						22
					],
					"id": "obj-208"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth5",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						216,
						120,
						22
					],
					"id": "obj-209"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync5",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						216,
						120,
						22
					],
					"id": "obj-210"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv5",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						216,
						120,
						22
					],
					"id": "obj-211"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt5",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						216,
						120,
						22
					],
					"id": "obj-212"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon6",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						216,
						120,
						22
					],
					"id": "obj-213"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape6",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						216,
						120,
						22
					],
					"id": "obj-214"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate6",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						244,
						120,
						22
					],
					"id": "obj-215"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth6",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						244,
						120,
						22
					],
					"id": "obj-216"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync6",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						244,
						120,
						22
					],
					"id": "obj-217"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv6",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						244,
						120,
						22
					],
					"id": "obj-218"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt6",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						244,
						120,
						22
					],
					"id": "obj-219"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon7",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						244,
						120,
						22
					],
					"id": "obj-220"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape7",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						244,
						120,
						22
					],
					"id": "obj-221"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate7",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						244,
						120,
						22
					],
					"id": "obj-222"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth7",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						272,
						120,
						22
					],
					"id": "obj-223"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync7",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						272,
						120,
						22
					],
					"id": "obj-224"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv7",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						272,
						120,
						22
					],
					"id": "obj-225"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt7",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						272,
						120,
						22
					],
					"id": "obj-226"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon8",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						272,
						120,
						22
					],
					"id": "obj-227"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape8",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						272,
						120,
						22
					],
					"id": "obj-228"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate8",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						272,
						120,
						22
					],
					"id": "obj-229"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth8",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						272,
						120,
						22
					],
					"id": "obj-230"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync8",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						300,
						120,
						22
					],
					"id": "obj-231"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv8",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						300,
						120,
						22
					],
					"id": "obj-232"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt8",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						300,
						120,
						22
					],
					"id": "obj-233"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lon9",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						300,
						120,
						22
					],
					"id": "obj-234"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lshape9",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						300,
						120,
						22
					],
					"id": "obj-235"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lrate9",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						300,
						120,
						22
					],
					"id": "obj-236"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldepth9",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						300,
						120,
						22
					],
					"id": "obj-237"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lsync9",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						300,
						120,
						22
					],
					"id": "obj-238"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ldiv9",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						328,
						120,
						22
					],
					"id": "obj-239"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ltgt9",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						328,
						120,
						22
					],
					"id": "obj-240"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend retrig",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						328,
						120,
						22
					],
					"id": "obj-241"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend density",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						328,
						120,
						22
					],
					"id": "obj-242"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend cx",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						328,
						120,
						22
					],
					"id": "obj-243"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend ratchet",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						328,
						120,
						22
					],
					"id": "obj-244"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend swing",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						328,
						120,
						22
					],
					"id": "obj-245"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend mutate",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						328,
						120,
						22
					],
					"id": "obj-246"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend gatef",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						356,
						120,
						22
					],
					"id": "obj-247"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend accent",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						356,
						120,
						22
					],
					"id": "obj-248"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend pjit",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						356,
						120,
						22
					],
					"id": "obj-249"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend posjit",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						356,
						120,
						22
					],
					"id": "obj-250"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend grid",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2220,
						356,
						120,
						22
					],
					"id": "obj-251"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend bars",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2350,
						356,
						120,
						22
					],
					"id": "obj-252"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend trip",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2480,
						356,
						120,
						22
					],
					"id": "obj-253"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend drive",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2610,
						356,
						120,
						22
					],
					"id": "obj-254"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend dtype",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						384,
						120,
						22
					],
					"id": "obj-255"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend comp",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						384,
						120,
						22
					],
					"id": "obj-256"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend mixamt",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						384,
						120,
						22
					],
					"id": "obj-257"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend panpos",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2090,
						384,
						120,
						22
					],
					"id": "obj-258"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend power",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1700,
						600,
						120,
						22
					],
					"id": "obj-259"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend reseed",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1830,
						600,
						120,
						22
					],
					"id": "obj-260"
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"text": "prepend lfosel",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1960,
						600,
						120,
						22
					],
					"id": "obj-261"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": [
						"obj-140",
						0
					],
					"source": [
						"obj-139",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-141",
						0
					],
					"source": [
						"obj-139",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-140",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-142",
						0
					],
					"source": [
						"obj-141",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-142",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-145",
						0
					],
					"source": [
						"obj-143",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-133",
						0
					],
					"source": [
						"obj-143",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-135",
						0
					],
					"source": [
						"obj-143",
						2
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-136",
						0
					],
					"source": [
						"obj-143",
						3
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-137",
						0
					],
					"source": [
						"obj-143",
						4
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-134",
						0
					],
					"source": [
						"obj-143",
						5
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-146",
						0
					],
					"source": [
						"obj-145",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-147",
						0
					],
					"source": [
						"obj-145",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-146",
						1
					],
					"source": [
						"obj-148",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-147",
						1
					],
					"source": [
						"obj-148",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-148",
						0
					],
					"source": [
						"obj-149",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-149",
						0
					],
					"source": [
						"obj-128",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-138",
						0
					],
					"source": [
						"obj-146",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-138",
						1
					],
					"source": [
						"obj-147",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-150",
						0
					],
					"source": [
						"obj-138",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-150",
						1
					],
					"source": [
						"obj-138",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-151",
						0
					],
					"source": [
						"obj-16",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-151",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-152",
						0
					],
					"source": [
						"obj-17",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-152",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-153",
						0
					],
					"source": [
						"obj-18",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-153",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-154",
						0
					],
					"source": [
						"obj-19",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-154",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-155",
						0
					],
					"source": [
						"obj-20",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-155",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-156",
						0
					],
					"source": [
						"obj-21",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-156",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-157",
						0
					],
					"source": [
						"obj-22",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-157",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-158",
						0
					],
					"source": [
						"obj-23",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-158",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-159",
						0
					],
					"source": [
						"obj-24",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-159",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-160",
						0
					],
					"source": [
						"obj-25",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-160",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-161",
						0
					],
					"source": [
						"obj-26",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-161",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-162",
						0
					],
					"source": [
						"obj-27",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-162",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-163",
						0
					],
					"source": [
						"obj-28",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-163",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-164",
						0
					],
					"source": [
						"obj-29",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-164",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-165",
						0
					],
					"source": [
						"obj-30",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-165",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-166",
						0
					],
					"source": [
						"obj-31",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-166",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-167",
						0
					],
					"source": [
						"obj-32",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-167",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-168",
						0
					],
					"source": [
						"obj-33",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-168",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-169",
						0
					],
					"source": [
						"obj-34",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-169",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-170",
						0
					],
					"source": [
						"obj-35",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-170",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-171",
						0
					],
					"source": [
						"obj-36",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-171",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-172",
						0
					],
					"source": [
						"obj-37",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-172",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-173",
						0
					],
					"source": [
						"obj-38",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-173",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-174",
						0
					],
					"source": [
						"obj-39",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-174",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-175",
						0
					],
					"source": [
						"obj-40",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-175",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-176",
						0
					],
					"source": [
						"obj-41",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-176",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-177",
						0
					],
					"source": [
						"obj-43",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-177",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-178",
						0
					],
					"source": [
						"obj-44",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-178",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-179",
						0
					],
					"source": [
						"obj-45",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-179",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-180",
						0
					],
					"source": [
						"obj-46",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-180",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-181",
						0
					],
					"source": [
						"obj-47",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-181",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-182",
						0
					],
					"source": [
						"obj-48",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-182",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-183",
						0
					],
					"source": [
						"obj-49",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-183",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-184",
						0
					],
					"source": [
						"obj-50",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-184",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-185",
						0
					],
					"source": [
						"obj-51",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-185",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-186",
						0
					],
					"source": [
						"obj-52",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-186",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-187",
						0
					],
					"source": [
						"obj-53",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-187",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-188",
						0
					],
					"source": [
						"obj-54",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-188",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-189",
						0
					],
					"source": [
						"obj-55",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-189",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-190",
						0
					],
					"source": [
						"obj-56",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-190",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-191",
						0
					],
					"source": [
						"obj-57",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-191",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-192",
						0
					],
					"source": [
						"obj-58",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-192",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-193",
						0
					],
					"source": [
						"obj-59",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-193",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-194",
						0
					],
					"source": [
						"obj-60",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-194",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-195",
						0
					],
					"source": [
						"obj-61",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-195",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-196",
						0
					],
					"source": [
						"obj-62",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-196",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-197",
						0
					],
					"source": [
						"obj-63",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-197",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-198",
						0
					],
					"source": [
						"obj-64",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-198",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-199",
						0
					],
					"source": [
						"obj-65",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-199",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-200",
						0
					],
					"source": [
						"obj-66",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-200",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-201",
						0
					],
					"source": [
						"obj-67",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-201",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-202",
						0
					],
					"source": [
						"obj-68",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-202",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-203",
						0
					],
					"source": [
						"obj-69",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-203",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-204",
						0
					],
					"source": [
						"obj-70",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-204",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-205",
						0
					],
					"source": [
						"obj-71",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-205",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-206",
						0
					],
					"source": [
						"obj-72",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-206",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-207",
						0
					],
					"source": [
						"obj-73",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-207",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-208",
						0
					],
					"source": [
						"obj-74",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-208",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-209",
						0
					],
					"source": [
						"obj-75",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-209",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-210",
						0
					],
					"source": [
						"obj-76",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-210",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-211",
						0
					],
					"source": [
						"obj-77",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-211",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-212",
						0
					],
					"source": [
						"obj-78",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-212",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-213",
						0
					],
					"source": [
						"obj-79",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-213",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-214",
						0
					],
					"source": [
						"obj-80",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-214",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-215",
						0
					],
					"source": [
						"obj-81",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-215",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-216",
						0
					],
					"source": [
						"obj-82",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-216",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-217",
						0
					],
					"source": [
						"obj-83",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-217",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-218",
						0
					],
					"source": [
						"obj-84",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-218",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-219",
						0
					],
					"source": [
						"obj-85",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-219",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-220",
						0
					],
					"source": [
						"obj-86",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-220",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-221",
						0
					],
					"source": [
						"obj-87",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-221",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-222",
						0
					],
					"source": [
						"obj-88",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-222",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-223",
						0
					],
					"source": [
						"obj-89",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-223",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-224",
						0
					],
					"source": [
						"obj-90",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-224",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-225",
						0
					],
					"source": [
						"obj-91",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-225",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-226",
						0
					],
					"source": [
						"obj-92",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-226",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-227",
						0
					],
					"source": [
						"obj-93",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-227",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-228",
						0
					],
					"source": [
						"obj-94",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-228",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-229",
						0
					],
					"source": [
						"obj-95",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-229",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-230",
						0
					],
					"source": [
						"obj-96",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-230",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-231",
						0
					],
					"source": [
						"obj-97",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-231",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-232",
						0
					],
					"source": [
						"obj-98",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-232",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-233",
						0
					],
					"source": [
						"obj-99",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-233",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-234",
						0
					],
					"source": [
						"obj-100",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-234",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-235",
						0
					],
					"source": [
						"obj-101",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-235",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-236",
						0
					],
					"source": [
						"obj-102",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-236",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-237",
						0
					],
					"source": [
						"obj-103",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-237",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-238",
						0
					],
					"source": [
						"obj-104",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-238",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-239",
						0
					],
					"source": [
						"obj-105",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-239",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-240",
						0
					],
					"source": [
						"obj-106",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-240",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-241",
						0
					],
					"source": [
						"obj-107",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-241",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-242",
						0
					],
					"source": [
						"obj-108",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-242",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-243",
						0
					],
					"source": [
						"obj-109",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-243",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-244",
						0
					],
					"source": [
						"obj-110",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-244",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-245",
						0
					],
					"source": [
						"obj-111",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-245",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-246",
						0
					],
					"source": [
						"obj-112",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-246",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-247",
						0
					],
					"source": [
						"obj-113",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-247",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-248",
						0
					],
					"source": [
						"obj-114",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-248",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-249",
						0
					],
					"source": [
						"obj-115",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-249",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-250",
						0
					],
					"source": [
						"obj-116",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-250",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-251",
						0
					],
					"source": [
						"obj-118",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-251",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-252",
						0
					],
					"source": [
						"obj-120",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-252",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-253",
						0
					],
					"source": [
						"obj-121",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-253",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-254",
						0
					],
					"source": [
						"obj-122",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-254",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-255",
						0
					],
					"source": [
						"obj-124",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-255",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-256",
						0
					],
					"source": [
						"obj-125",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-256",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-257",
						0
					],
					"source": [
						"obj-126",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-257",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-258",
						0
					],
					"source": [
						"obj-127",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-258",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-259",
						0
					],
					"source": [
						"obj-128",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-259",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-260",
						0
					],
					"source": [
						"obj-129",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-260",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-261",
						0
					],
					"source": [
						"obj-132",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-143",
						0
					],
					"source": [
						"obj-261",
						0
					]
				}
			}
		],
		"dependency_cache": [
			{
				"name": "glitch_machine.js",
				"type": "TEXT",
				"implicit": 1
			},
			{
				"name": "gm_ui.js",
				"type": "TEXT",
				"implicit": 1
			}
		],
		"autosave": 0
	}
}