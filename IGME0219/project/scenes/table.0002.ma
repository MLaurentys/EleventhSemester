//Maya ASCII 2022 scene
//Name: table.0002.ma
//Last modified: Mon, Nov 29, 2021 03:04:17 PM
//Codeset: 1252
requires maya "2022";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Enterprise v2009 (Build: 19043)";
fileInfo "UUID" "F9AC7AD5-4CA9-69EE-5A80-AD9215CF5488";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000291";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.6225046363834865 -5.1102375454025157 -2.8220031931740479 ;
	setAttr ".r" -type "double3" 47.061647270094049 971.00000000003035 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000292";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.1803696492902667;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000293";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000294";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000295";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000296";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000297";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000298";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "table";
	rename -uid "A9293916-413A-3251-23F9-2C934FA1649C";
	setAttr ".t" -type "double3" -2 1.5722704707296702 -1 ;
	setAttr ".s" -type "double3" 5.0523083993623921 0.16454999264092957 3.1385696773349152 ;
createNode mesh -n "tableShape" -p "table";
	rename -uid "DF7BC7CE-403A-7E57-C9E2-B6AF6F51BDC8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75119534219356465 0.87232158690370509 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "feet1" -p "table";
	rename -uid "29ECC16F-4B1C-B90F-ABE9-D4ACBDE04107";
	setAttr ".t" -type "double3" -0.44534098517896348 -8.6433943138074607 0.39827059090860295 ;
	setAttr ".s" -type "double3" 0.042519287470175283 0.84967874962326395 0.068445366936343899 ;
createNode mesh -n "feetShape1" -p "feet1";
	rename -uid "47D5B5EA-4A2A-2482-298B-81AE4DAD4E1C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "feet3" -p "table";
	rename -uid "4002CFFE-4F2B-B37F-FDB3-B59D8F5CB088";
	setAttr ".t" -type "double3" 0.44534098517896348 -8.6433943138074607 -0.39827059090860301 ;
	setAttr ".s" -type "double3" 0.042519287470175283 0.84967874962326395 0.068445366936343899 ;
createNode mesh -n "feetShape3" -p "feet3";
	rename -uid "930026D2-4FA7-E98E-445E-40AC715D76C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.075173139572143555 0.34883028268814087 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "feet2" -p "table";
	rename -uid "BB4B371A-4793-6847-C25C-42AF6045C55E";
	setAttr ".t" -type "double3" -0.4453409851789637 -8.6433943138074607 -0.39827059090860301 ;
	setAttr ".s" -type "double3" 0.042519287470175283 0.84967874962326406 0.068445366936343899 ;
createNode mesh -n "feetShape2" -p "feet2";
	rename -uid "5947133C-4FFC-1EAF-D3F5-DB9515300FED";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.30883723497390747 0.54141059037177808 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "feet4" -p "table";
	rename -uid "E821F760-4001-CE1A-CCEC-6BBE39373B23";
	setAttr ".t" -type "double3" 0.44534098517896348 -8.6433943138074607 0.39827059090860295 ;
	setAttr ".s" -type "double3" 0.042519287470175283 0.84967874962326395 0.068445366936343899 ;
createNode mesh -n "feetShape4" -p "feet4";
	rename -uid "9BE47921-42BC-B203-B72B-66A5B99371A1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B4E66171-4665-BD61-E0FA-738892C50888";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "A0F72DC6-4FBC-A063-44E4-D58878EDA16C";
createNode displayLayer -n "defaultLayer";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1B41FFBA-4A93-9CD0-9873-01BB38DED1A7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029D";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EE086401-4370-010D-CFA2-15984C63A0B1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5D3027D1-4902-8F48-92BE-3CBB56525EAA";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "23F24D00-0000-7078-61A1-806300000303";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 332\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 708\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "23F24D00-0000-7078-61A1-806300000304";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "67FD9EB9-424C-478E-7AA1-CEBAC6703549";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "A100CC20-4567-CB39-88DA-76B11771C30E";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "1673C281-4C49-6498-27E2-E387411D3A61";
	setAttr ".dc" -type "componentList" 1 "f[24:35]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "1AC4384F-4AA7-B6E1-8649-C4AEE0671061";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:23]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.25313851 1.2131269 ;
	setAttr ".rs" 60816;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.0032528585503287522 0.25313852670033693 0.9983064017902632 ;
	setAttr ".cbx" -type "double3" 0.4328939649912702 0.25313852670033693 1.4279475082312048 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "5F0DCABA-4D28-D738-F39E-E0B3B9D7EE76";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[50]" "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70:71]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.29546088 1.2131268 ;
	setAttr ".rs" 49349;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.034989014386124784 0.29546088093193967 1.0300424423873344 ;
	setAttr ".cbx" -type "double3" 0.40115782195977689 0.29546088093193967 1.3962111603308671 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "2413B1C9-4B1F-1C66-83FE-7C8C6713D506";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[25]" -type "float3" -0.12794079 0.30601138 0.073866621 ;
	setAttr ".tk[26]" -type "float3" -0.073866628 0.30601138 0.12794079 ;
	setAttr ".tk[27]" -type "float3" 4.402795e-09 0.30601138 0.14773327 ;
	setAttr ".tk[28]" -type "float3" 0.073866643 0.30601138 0.12794079 ;
	setAttr ".tk[29]" -type "float3" 0.1279408 0.30601138 0.073866621 ;
	setAttr ".tk[30]" -type "float3" 0.14773329 0.30601138 -3.522236e-08 ;
	setAttr ".tk[31]" -type "float3" 0.1279408 0.30601138 -0.073866732 ;
	setAttr ".tk[32]" -type "float3" 0.073866643 0.30601138 -0.12794086 ;
	setAttr ".tk[33]" -type "float3" 4.402795e-09 0.30601138 -0.14773327 ;
	setAttr ".tk[34]" -type "float3" -0.073866628 0.30601138 -0.12794086 ;
	setAttr ".tk[35]" -type "float3" -0.12794079 0.30601138 -0.073866732 ;
	setAttr ".tk[36]" -type "float3" -0.14773329 0.30601138 -3.522236e-08 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "514F31CD-474A-361B-70FB-C197C387B887";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86]" "e[88]" "e[90]" "e[92]" "e[94:95]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.31828099 1.2131267 ;
	setAttr ".rs" 59498;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.034989014386124784 0.31828099884077971 1.0300423271486094 ;
	setAttr ".cbx" -type "double3" 0.40115780915547417 0.31828099884077971 1.3962110707007478 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "64D25A8A-454E-E176-AA01-568F19334815";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[37:48]" -type "float3"  0 0.16500069 0 0 0.16500069
		 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069
		 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "C8C52041-4F3D-4C79-279D-8195DA4D5624";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[98]" "e[100]" "e[102]" "e[104]" "e[106]" "e[108]" "e[110]" "e[112]" "e[114]" "e[116]" "e[118:119]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.2180734 0.36122316 1.2131265 ;
	setAttr ".rs" 49513;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.071267291759016749 0.36122314974735786 1.0663205020870794 ;
	setAttr ".cbx" -type "double3" 0.36487950617397669 0.36122314974735786 1.3599326908934337 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "55BCD6E0-4D15-6137-5D79-7FAAE750B119";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[49:60]" -type "float3"  -0.14625193 0.31049287 0.08443857
		 -0.084438555 0.31049287 0.14625192 -1.1810692e-08 0.31049287 0.16887711 0.084438555
		 0.31049287 0.14625192 0.1462519 0.31049287 0.08443857 0.16887712 0.31049287 -4.7242771e-08
		 0.1462519 0.31049287 -0.08443857 0.084438555 0.31049287 -0.14625192 -1.1810692e-08
		 0.31049287 -0.16887711 -0.084438555 0.31049287 -0.14625192 -0.14625193 0.31049287
		 -0.08443857 -0.16887712 0.31049287 -4.7242771e-08;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "E4F2BE88-46FB-2084-12A6-AD9CC935B4E9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[122]" "e[124]" "e[126]" "e[128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142:143]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 0.63139784 1.2131265 ;
	setAttr ".rs" 40379;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.071267291759016749 0.63139786711086732 1.0663203996526573 ;
	setAttr ".cbx" -type "double3" 0.36487948056537112 0.63139786711086732 1.3599325884590117 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "712C13B0-4486-2DD3-959A-78A27137FE83";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[61:72]" -type "float3"  0 1.95349622 0 0 1.95349622
		 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622
		 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "9A64C9AF-4C32-29CA-78AF-E7A123FDF8E9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166:167]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 0.69277382 1.2131264 ;
	setAttr ".rs" 55311;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11542103480785851 0.69277384575540701 1.110474040267077 ;
	setAttr ".cbx" -type "double3" 0.32072573751652939 0.69277384575540701 1.3157787429757477 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "AA99DE0A-49C8-B67D-B830-FAA7891F4277";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[73:84]" -type "float3"  -0.17800096 0.44377881 0.10276899
		 -0.10276883 0.44377881 0.1780009 -3.5853667e-08 0.44377881 0.20553778 0.10276887
		 0.44377881 0.1780009 0.17800093 0.44377881 0.10276899 0.20553778 0.44377881 7.1707319e-08
		 0.17800093 0.44377881 -0.10276899 0.10276887 0.44377881 -0.1780009 -3.5853667e-08
		 0.44377881 -0.20553778 -0.10276883 0.44377881 -0.1780009 -0.17800096 0.44377881 -0.10276899
		 -0.20553778 0.44377881 7.1707319e-08;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "FE646700-4F3E-0532-B622-E998F1323143";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190:191]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 1.0093429 1.2131263 ;
	setAttr ".rs" 38700;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11542103480785851 1.0093428989051199 1.1104739378326547 ;
	setAttr ".cbx" -type "double3" 0.32072573751652939 1.0093428989051199 1.3157786405413257 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "478F68D1-446B-137D-4FEC-0DB0E86727F9";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[85:96]" -type "float3"  0 2.28895068 0 0 2.28895068
		 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068
		 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	rename -uid "711BB617-43BC-A04B-E882-858074ACE06F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214:215]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 1.0779508 1.2131262 ;
	setAttr ".rs" 64426;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.088750645275042339 1.0779508114920935 1.0838034458654164 ;
	setAttr ".cbx" -type "double3" 0.34739612704934553 1.0779508114920935 1.3424489276397196 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "D77CB9FA-46F9-F79C-1D85-378D84BEEE1A";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[97:108]" -type "float3"  0.10751873 0.49606884 -0.062076066
		 0.062075909 0.49606884 -0.10751868 -5.2034902e-17 0.49606884 -0.12415195 -0.062075973
		 0.49606884 -0.10751868 -0.10751873 0.49606884 -0.062076066 -0.12415195 0.49606884
		 -6.1944164e-08 -0.10751873 0.49606884 0.062076066 -0.062075973 0.49606884 0.10751856
		 -5.2034902e-17 0.49606884 0.12415195 0.062075909 0.49606884 0.10751856 0.10751873
		 0.49606884 0.062076066 0.12415195 0.49606884 -6.1944164e-08;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge8";
	rename -uid "EFB61A6D-4CD4-DFB0-AE26-199C12B78098";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214:215]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 1.0779508 1.2131262 ;
	setAttr ".rs" 64426;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.088750645275042339 1.0779508114920935 1.0838034458654164 ;
	setAttr ".cbx" -type "double3" 0.34739612704934553 1.0779508114920935 1.3424489276397196 ;
createNode polyTweak -n "pasted__polyTweak7";
	rename -uid "49CB8D59-47BB-E167-C022-37B328FF92D2";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[97:108]" -type "float3"  0.10751873 0.49606884 -0.062076066
		 0.062075909 0.49606884 -0.10751868 -5.2034902e-17 0.49606884 -0.12415195 -0.062075973
		 0.49606884 -0.10751868 -0.10751873 0.49606884 -0.062076066 -0.12415195 0.49606884
		 -6.1944164e-08 -0.10751873 0.49606884 0.062076066 -0.062075973 0.49606884 0.10751856
		 -5.2034902e-17 0.49606884 0.12415195 0.062075909 0.49606884 0.10751856 0.10751873
		 0.49606884 0.062076066 0.12415195 0.49606884 -6.1944164e-08;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge7";
	rename -uid "4211C5A6-483E-37ED-9898-488489ECEA59";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190:191]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 1.0093429 1.2131263 ;
	setAttr ".rs" 38700;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11542103480785851 1.0093428989051199 1.1104739378326547 ;
	setAttr ".cbx" -type "double3" 0.32072573751652939 1.0093428989051199 1.3157786405413257 ;
createNode polyTweak -n "pasted__polyTweak6";
	rename -uid "7110D903-4FA0-299E-058A-8D9DA76F7842";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[85:96]" -type "float3"  0 2.28895068 0 0 2.28895068
		 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068
		 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge6";
	rename -uid "00DAB3EA-49FF-9103-90AE-6A84CE8AEDBB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166:167]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 0.69277382 1.2131264 ;
	setAttr ".rs" 55311;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11542103480785851 0.69277384575540701 1.110474040267077 ;
	setAttr ".cbx" -type "double3" 0.32072573751652939 0.69277384575540701 1.3157787429757477 ;
createNode polyTweak -n "pasted__polyTweak5";
	rename -uid "B1147D8E-403A-CFD6-BDCB-228FA7794386";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[73:84]" -type "float3"  -0.17800096 0.44377881 0.10276899
		 -0.10276883 0.44377881 0.1780009 -3.5853667e-08 0.44377881 0.20553778 0.10276887
		 0.44377881 0.1780009 0.17800093 0.44377881 0.10276899 0.20553778 0.44377881 7.1707319e-08
		 0.17800093 0.44377881 -0.10276899 0.10276887 0.44377881 -0.1780009 -3.5853667e-08
		 0.44377881 -0.20553778 -0.10276883 0.44377881 -0.1780009 -0.17800096 0.44377881 -0.10276899
		 -0.20553778 0.44377881 7.1707319e-08;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge5";
	rename -uid "ABF08CDD-4883-BD26-5F94-E9B3D35C69BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[122]" "e[124]" "e[126]" "e[128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142:143]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 0.63139784 1.2131265 ;
	setAttr ".rs" 40379;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.071267291759016749 0.63139786711086732 1.0663203996526573 ;
	setAttr ".cbx" -type "double3" 0.36487948056537112 0.63139786711086732 1.3599325884590117 ;
createNode polyTweak -n "pasted__polyTweak4";
	rename -uid "693C9983-4312-0F85-B4AE-AE8A3F42DF0B";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[61:72]" -type "float3"  0 1.95349622 0 0 1.95349622
		 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622
		 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge4";
	rename -uid "6AEC4E7D-45C0-B545-9F05-3187980D454D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[98]" "e[100]" "e[102]" "e[104]" "e[106]" "e[108]" "e[110]" "e[112]" "e[114]" "e[116]" "e[118:119]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.2180734 0.36122316 1.2131265 ;
	setAttr ".rs" 49513;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.071267291759016749 0.36122314974735786 1.0663205020870794 ;
	setAttr ".cbx" -type "double3" 0.36487950617397669 0.36122314974735786 1.3599326908934337 ;
createNode polyTweak -n "pasted__polyTweak3";
	rename -uid "B1035B5B-4B6E-B845-379B-08B41EC1506E";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[49:60]" -type "float3"  -0.14625193 0.31049287 0.08443857
		 -0.084438555 0.31049287 0.14625192 -1.1810692e-08 0.31049287 0.16887711 0.084438555
		 0.31049287 0.14625192 0.1462519 0.31049287 0.08443857 0.16887712 0.31049287 -4.7242771e-08
		 0.1462519 0.31049287 -0.08443857 0.084438555 0.31049287 -0.14625192 -1.1810692e-08
		 0.31049287 -0.16887711 -0.084438555 0.31049287 -0.14625192 -0.14625193 0.31049287
		 -0.08443857 -0.16887712 0.31049287 -4.7242771e-08;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge3";
	rename -uid "F7FD2858-407F-8071-1C85-0EAB02EC8CD3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86]" "e[88]" "e[90]" "e[92]" "e[94:95]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.31828099 1.2131267 ;
	setAttr ".rs" 59498;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.034989014386124784 0.31828099884077971 1.0300423271486094 ;
	setAttr ".cbx" -type "double3" 0.40115780915547417 0.31828099884077971 1.3962110707007478 ;
createNode polyTweak -n "pasted__polyTweak2";
	rename -uid "D7DA20EE-4BC6-AFE8-F98E-5F8211E6AA1D";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[37:48]" -type "float3"  0 0.16500069 0 0 0.16500069
		 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069
		 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge2";
	rename -uid "EAF86A5C-441C-6634-5228-AC9F6A145A89";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[50]" "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70:71]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.29546088 1.2131268 ;
	setAttr ".rs" 49349;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.034989014386124784 0.29546088093193967 1.0300424423873344 ;
	setAttr ".cbx" -type "double3" 0.40115782195977689 0.29546088093193967 1.3962111603308671 ;
createNode polyTweak -n "pasted__polyTweak1";
	rename -uid "6294EEF0-42FB-34D9-8672-E1AE7937E6BE";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[25:36]" -type "float3"  -0.12794079 0.30601138 0.073866621
		 -0.073866628 0.30601138 0.12794079 4.402795e-09 0.30601138 0.14773327 0.073866643
		 0.30601138 0.12794079 0.1279408 0.30601138 0.073866621 0.14773329 0.30601138 -3.522236e-08
		 0.1279408 0.30601138 -0.073866732 0.073866643 0.30601138 -0.12794086 4.402795e-09
		 0.30601138 -0.14773327 -0.073866628 0.30601138 -0.12794086 -0.12794079 0.30601138
		 -0.073866732 -0.14773329 0.30601138 -3.522236e-08;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge1";
	rename -uid "3BDB0EA1-4040-5821-6EFC-56BC5B7BE492";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:23]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.25313851 1.2131269 ;
	setAttr ".rs" 60816;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.0032528585503287522 0.25313852670033693 0.9983064017902632 ;
	setAttr ".cbx" -type "double3" 0.4328939649912702 0.25313852670033693 1.4279475082312048 ;
createNode deleteComponent -n "pasted__deleteComponent1";
	rename -uid "01C7CF39-418E-D975-588D-7199F85FEE4D";
	setAttr ".dc" -type "componentList" 1 "f[24:35]";
createNode polyCylinder -n "pasted__polyCylinder1";
	rename -uid "BABCC09E-4038-1657-FE96-3D9174D8961F";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge16";
	rename -uid "E6A08EFF-46F3-28AF-196A-69AE142F20C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214:215]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 1.0779508 1.2131262 ;
	setAttr ".rs" 64426;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.088750645275042339 1.0779508114920935 1.0838034458654164 ;
	setAttr ".cbx" -type "double3" 0.34739612704934553 1.0779508114920935 1.3424489276397196 ;
createNode polyTweak -n "pasted__polyTweak14";
	rename -uid "65417803-4CF4-212B-90AD-70B580DD6B2C";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[97:108]" -type "float3"  0.10751873 0.49606884 -0.062076066
		 0.062075909 0.49606884 -0.10751868 -5.2034902e-17 0.49606884 -0.12415195 -0.062075973
		 0.49606884 -0.10751868 -0.10751873 0.49606884 -0.062076066 -0.12415195 0.49606884
		 -6.1944164e-08 -0.10751873 0.49606884 0.062076066 -0.062075973 0.49606884 0.10751856
		 -5.2034902e-17 0.49606884 0.12415195 0.062075909 0.49606884 0.10751856 0.10751873
		 0.49606884 0.062076066 0.12415195 0.49606884 -6.1944164e-08;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge15";
	rename -uid "F64CF078-4F8C-E564-E3B9-DE920D9ED693";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190:191]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 1.0093429 1.2131263 ;
	setAttr ".rs" 38700;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11542103480785851 1.0093428989051199 1.1104739378326547 ;
	setAttr ".cbx" -type "double3" 0.32072573751652939 1.0093428989051199 1.3157786405413257 ;
createNode polyTweak -n "pasted__polyTweak13";
	rename -uid "502D7F51-4B70-1A4A-6595-E6ACA4FEEA17";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[85:96]" -type "float3"  0 2.28895068 0 0 2.28895068
		 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068
		 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge14";
	rename -uid "E18A67DE-491C-57CE-8A6C-61ABDA648D6D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166:167]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 0.69277382 1.2131264 ;
	setAttr ".rs" 55311;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11542103480785851 0.69277384575540701 1.110474040267077 ;
	setAttr ".cbx" -type "double3" 0.32072573751652939 0.69277384575540701 1.3157787429757477 ;
createNode polyTweak -n "pasted__polyTweak12";
	rename -uid "DFD2F27D-4694-0506-D4FA-1AA46FD8E0DC";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[73:84]" -type "float3"  -0.17800096 0.44377881 0.10276899
		 -0.10276883 0.44377881 0.1780009 -3.5853667e-08 0.44377881 0.20553778 0.10276887
		 0.44377881 0.1780009 0.17800093 0.44377881 0.10276899 0.20553778 0.44377881 7.1707319e-08
		 0.17800093 0.44377881 -0.10276899 0.10276887 0.44377881 -0.1780009 -3.5853667e-08
		 0.44377881 -0.20553778 -0.10276883 0.44377881 -0.1780009 -0.17800096 0.44377881 -0.10276899
		 -0.20553778 0.44377881 7.1707319e-08;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge13";
	rename -uid "611F5402-4D3B-7648-6576-E49173B24324";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[122]" "e[124]" "e[126]" "e[128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142:143]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 0.63139784 1.2131265 ;
	setAttr ".rs" 40379;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.071267291759016749 0.63139786711086732 1.0663203996526573 ;
	setAttr ".cbx" -type "double3" 0.36487948056537112 0.63139786711086732 1.3599325884590117 ;
createNode polyTweak -n "pasted__polyTweak11";
	rename -uid "DBA6DFAC-4729-F533-29D0-57B983F76E12";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[61:72]" -type "float3"  0 1.95349622 0 0 1.95349622
		 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622
		 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge12";
	rename -uid "1CB9C1C9-412F-3056-2FB8-AFB7C9C176E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[98]" "e[100]" "e[102]" "e[104]" "e[106]" "e[108]" "e[110]" "e[112]" "e[114]" "e[116]" "e[118:119]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.2180734 0.36122316 1.2131265 ;
	setAttr ".rs" 49513;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.071267291759016749 0.36122314974735786 1.0663205020870794 ;
	setAttr ".cbx" -type "double3" 0.36487950617397669 0.36122314974735786 1.3599326908934337 ;
createNode polyTweak -n "pasted__polyTweak10";
	rename -uid "92019A6A-412F-224C-50C3-A08572DC0AAE";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[49:60]" -type "float3"  -0.14625193 0.31049287 0.08443857
		 -0.084438555 0.31049287 0.14625192 -1.1810692e-08 0.31049287 0.16887711 0.084438555
		 0.31049287 0.14625192 0.1462519 0.31049287 0.08443857 0.16887712 0.31049287 -4.7242771e-08
		 0.1462519 0.31049287 -0.08443857 0.084438555 0.31049287 -0.14625192 -1.1810692e-08
		 0.31049287 -0.16887711 -0.084438555 0.31049287 -0.14625192 -0.14625193 0.31049287
		 -0.08443857 -0.16887712 0.31049287 -4.7242771e-08;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge11";
	rename -uid "4E3B2EB3-4059-8DE8-8C18-25A3D34D5DB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86]" "e[88]" "e[90]" "e[92]" "e[94:95]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.31828099 1.2131267 ;
	setAttr ".rs" 59498;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.034989014386124784 0.31828099884077971 1.0300423271486094 ;
	setAttr ".cbx" -type "double3" 0.40115780915547417 0.31828099884077971 1.3962110707007478 ;
createNode polyTweak -n "pasted__polyTweak9";
	rename -uid "D3C33401-4AD0-3EBE-395E-EE81AD70CD56";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[37:48]" -type "float3"  0 0.16500069 0 0 0.16500069
		 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069
		 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge10";
	rename -uid "06CEC3E3-4794-275E-B066-D28D6418F322";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[50]" "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70:71]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.29546088 1.2131268 ;
	setAttr ".rs" 49349;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.034989014386124784 0.29546088093193967 1.0300424423873344 ;
	setAttr ".cbx" -type "double3" 0.40115782195977689 0.29546088093193967 1.3962111603308671 ;
createNode polyTweak -n "pasted__polyTweak8";
	rename -uid "B5DE23A1-4FF1-FB80-C740-4AB74583F6A9";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[25:36]" -type "float3"  -0.12794079 0.30601138 0.073866621
		 -0.073866628 0.30601138 0.12794079 4.402795e-09 0.30601138 0.14773327 0.073866643
		 0.30601138 0.12794079 0.1279408 0.30601138 0.073866621 0.14773329 0.30601138 -3.522236e-08
		 0.1279408 0.30601138 -0.073866732 0.073866643 0.30601138 -0.12794086 4.402795e-09
		 0.30601138 -0.14773327 -0.073866628 0.30601138 -0.12794086 -0.12794079 0.30601138
		 -0.073866732 -0.14773329 0.30601138 -3.522236e-08;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge9";
	rename -uid "6F2BB03B-42B2-0187-2840-39A1B19DBDA9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:23]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.25313851 1.2131269 ;
	setAttr ".rs" 60816;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.0032528585503287522 0.25313852670033693 0.9983064017902632 ;
	setAttr ".cbx" -type "double3" 0.4328939649912702 0.25313852670033693 1.4279475082312048 ;
createNode deleteComponent -n "pasted__deleteComponent2";
	rename -uid "E0BDA3C5-4628-1008-1A2E-D08605FAEA20";
	setAttr ".dc" -type "componentList" 1 "f[24:35]";
createNode polyCylinder -n "pasted__polyCylinder2";
	rename -uid "C1A416FA-48C3-03D9-D533-4B98FB22C731";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge8";
	rename -uid "0FCB6D39-42AC-C21E-A6B8-8390732E2934";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214:215]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 1.0779508 1.2131262 ;
	setAttr ".rs" 64426;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.088750645275042339 1.0779508114920935 1.0838034458654164 ;
	setAttr ".cbx" -type "double3" 0.34739612704934553 1.0779508114920935 1.3424489276397196 ;
createNode polyTweak -n "pasted__pasted__polyTweak7";
	rename -uid "214BD7F0-4B5A-EF95-E944-B48ABE64CEF3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[97:108]" -type "float3"  0.10751873 0.49606884 -0.062076066
		 0.062075909 0.49606884 -0.10751868 -5.2034902e-17 0.49606884 -0.12415195 -0.062075973
		 0.49606884 -0.10751868 -0.10751873 0.49606884 -0.062076066 -0.12415195 0.49606884
		 -6.1944164e-08 -0.10751873 0.49606884 0.062076066 -0.062075973 0.49606884 0.10751856
		 -5.2034902e-17 0.49606884 0.12415195 0.062075909 0.49606884 0.10751856 0.10751873
		 0.49606884 0.062076066 0.12415195 0.49606884 -6.1944164e-08;
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge7";
	rename -uid "103C329F-4AA1-D5EA-8621-9480FA84A1B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190:191]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 1.0093429 1.2131263 ;
	setAttr ".rs" 38700;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11542103480785851 1.0093428989051199 1.1104739378326547 ;
	setAttr ".cbx" -type "double3" 0.32072573751652939 1.0093428989051199 1.3157786405413257 ;
createNode polyTweak -n "pasted__pasted__polyTweak6";
	rename -uid "9BA3FFCE-4426-18F6-BDD9-ABBB056E037D";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[85:96]" -type "float3"  0 2.28895068 0 0 2.28895068
		 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068
		 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0 0 2.28895068 0;
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge6";
	rename -uid "7EAFD225-47FD-1D0D-F1C3-A7AFDF3905AF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166:167]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 0.69277382 1.2131264 ;
	setAttr ".rs" 55311;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11542103480785851 0.69277384575540701 1.110474040267077 ;
	setAttr ".cbx" -type "double3" 0.32072573751652939 0.69277384575540701 1.3157787429757477 ;
createNode polyTweak -n "pasted__pasted__polyTweak5";
	rename -uid "259888A0-40FF-37DF-3E9E-17B75EB8BC22";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[73:84]" -type "float3"  -0.17800096 0.44377881 0.10276899
		 -0.10276883 0.44377881 0.1780009 -3.5853667e-08 0.44377881 0.20553778 0.10276887
		 0.44377881 0.1780009 0.17800093 0.44377881 0.10276899 0.20553778 0.44377881 7.1707319e-08
		 0.17800093 0.44377881 -0.10276899 0.10276887 0.44377881 -0.1780009 -3.5853667e-08
		 0.44377881 -0.20553778 -0.10276883 0.44377881 -0.1780009 -0.17800096 0.44377881 -0.10276899
		 -0.20553778 0.44377881 7.1707319e-08;
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge5";
	rename -uid "07D175E6-4967-8FCE-95A6-38A007618372";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[122]" "e[124]" "e[126]" "e[128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142:143]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807338 0.63139784 1.2131265 ;
	setAttr ".rs" 40379;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.071267291759016749 0.63139786711086732 1.0663203996526573 ;
	setAttr ".cbx" -type "double3" 0.36487948056537112 0.63139786711086732 1.3599325884590117 ;
createNode polyTweak -n "pasted__pasted__polyTweak4";
	rename -uid "AFE54EBF-4830-8B2D-B13F-A0AC1FD4DC5D";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[61:72]" -type "float3"  0 1.95349622 0 0 1.95349622
		 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622
		 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0 0 1.95349622 0;
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge4";
	rename -uid "74D88F5B-4245-22F3-ACE1-47B321576B4F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[98]" "e[100]" "e[102]" "e[104]" "e[106]" "e[108]" "e[110]" "e[112]" "e[114]" "e[116]" "e[118:119]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.2180734 0.36122316 1.2131265 ;
	setAttr ".rs" 49513;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.071267291759016749 0.36122314974735786 1.0663205020870794 ;
	setAttr ".cbx" -type "double3" 0.36487950617397669 0.36122314974735786 1.3599326908934337 ;
createNode polyTweak -n "pasted__pasted__polyTweak3";
	rename -uid "6E0643B5-4728-0C82-33BB-308139A4956A";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[49:60]" -type "float3"  -0.14625193 0.31049287 0.08443857
		 -0.084438555 0.31049287 0.14625192 -1.1810692e-08 0.31049287 0.16887711 0.084438555
		 0.31049287 0.14625192 0.1462519 0.31049287 0.08443857 0.16887712 0.31049287 -4.7242771e-08
		 0.1462519 0.31049287 -0.08443857 0.084438555 0.31049287 -0.14625192 -1.1810692e-08
		 0.31049287 -0.16887711 -0.084438555 0.31049287 -0.14625192 -0.14625193 0.31049287
		 -0.08443857 -0.16887712 0.31049287 -4.7242771e-08;
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge3";
	rename -uid "5F53B4AB-4DC7-DB8F-3997-5D8C68F9AAE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86]" "e[88]" "e[90]" "e[92]" "e[94:95]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.31828099 1.2131267 ;
	setAttr ".rs" 59498;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.034989014386124784 0.31828099884077971 1.0300423271486094 ;
	setAttr ".cbx" -type "double3" 0.40115780915547417 0.31828099884077971 1.3962110707007478 ;
createNode polyTweak -n "pasted__pasted__polyTweak2";
	rename -uid "234E0736-42D5-7EB3-1559-778A27842AD3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[37:48]" -type "float3"  0 0.16500069 0 0 0.16500069
		 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069
		 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0 0 0.16500069 0;
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge2";
	rename -uid "EBD4D9B7-450B-FCFA-CD34-DCB064C1205B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[50]" "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70:71]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.29546088 1.2131268 ;
	setAttr ".rs" 49349;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.034989014386124784 0.29546088093193967 1.0300424423873344 ;
	setAttr ".cbx" -type "double3" 0.40115782195977689 0.29546088093193967 1.3962111603308671 ;
createNode polyTweak -n "pasted__pasted__polyTweak1";
	rename -uid "838ABA27-4692-1359-2D76-F8B847EE0FF3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[25:36]" -type "float3"  -0.12794079 0.30601138 0.073866621
		 -0.073866628 0.30601138 0.12794079 4.402795e-09 0.30601138 0.14773327 0.073866643
		 0.30601138 0.12794079 0.1279408 0.30601138 0.073866621 0.14773329 0.30601138 -3.522236e-08
		 0.1279408 0.30601138 -0.073866732 0.073866643 0.30601138 -0.12794086 4.402795e-09
		 0.30601138 -0.14773327 -0.073866628 0.30601138 -0.12794086 -0.12794079 0.30601138
		 -0.073866732 -0.14773329 0.30601138 -3.522236e-08;
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge1";
	rename -uid "CB949FA7-4E45-ECAE-CE16-CBAF1B9BA0DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:23]";
	setAttr ".ix" -type "matrix" 0.21482055322047072 0 0 0 0 0.13830317734876635 0 0
		 0 0 0.21482055322047072 0 0.21807341177079947 0.11483534935157058 1.213126955010734 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21807341 0.25313851 1.2131269 ;
	setAttr ".rs" 60816;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.0032528585503287522 0.25313852670033693 0.9983064017902632 ;
	setAttr ".cbx" -type "double3" 0.4328939649912702 0.25313852670033693 1.4279475082312048 ;
createNode deleteComponent -n "pasted__pasted__deleteComponent1";
	rename -uid "CD890128-49D2-BEC3-B279-9A84C43496CD";
	setAttr ".dc" -type "componentList" 1 "f[24:35]";
createNode polyCylinder -n "pasted__pasted__polyCylinder1";
	rename -uid "78E7C51A-46F4-4CEB-B4EC-DA809D27D263";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "8B58700B-4E62-4B70-815F-5C9653ACB9B3";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	rename -uid "1699FDC3-42B0-F6A1-38AB-D0BC4907023D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[3]" "e[10:11]";
	setAttr ".ix" -type "matrix" 5.0523083993623921 0 0 0 0 0.16454999264092957 0 0 0 0 3.1385696773349152 0
		 -2 1.5722704707296702 -1 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2 1.6015474 -1 ;
	setAttr ".rs" 40306;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.526154199681196 1.6015474185399028 -2.5692848386674578 ;
	setAttr ".cbx" -type "double3" 0.52615419968119603 1.6015474185399028 0.5692848386674576 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "F21DCAD8-4670-F100-2C87-D6A1618AB696";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.6779213 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.6779213 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.6779213 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.6779213 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	rename -uid "4B077584-4DCF-551D-9B98-4BA0E541F31B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[14]" "e[17:19]";
	setAttr ".ix" -type "matrix" 5.0523083993623921 0 0 0 0 0.16454999264092957 0 0 0 0 3.1385696773349152 0
		 -2 1.5722704707296702 -1 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.0000002 1.5491214 -1 ;
	setAttr ".rs" 63226;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.4609512906600717 1.5491214036433398 -2.5287796275632202 ;
	setAttr ".cbx" -type "double3" 0.46095098951902447 1.5491214036433398 0.52877962756321994 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "1C6CB891-4518-6B22-30D3-8E95F08E664C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.012905634 -0.31860235 -0.012905631
		 -0.012905634 -0.31860235 -0.012905631 0.012905634 -0.31860235 0.012905631 -0.012905634
		 -0.31860235 0.012905631;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "68BFB336-4877-6FCE-3BED-7CBF96BAB6CB";
	setAttr ".ics" -type "componentList" 2 "e[22]" "e[25:27]";
createNode polyTweak -n "polyTweak10";
	rename -uid "EFD5A803-45CF-B8C2-FA18-5DAF4E3610D0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  2.3283064e-10 -0.2757535 -2.3283064e-10
		 -2.3283064e-10 -0.2757535 -2.3283064e-10 2.3283064e-10 -0.2757535 2.3283064e-10 -2.3283064e-10
		 -0.2757535 2.3283064e-10;
createNode polyNormal -n "polyNormal1";
	rename -uid "660AA078-4DA2-C6E9-4CFF-BB8EA24B97B3";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal2";
	rename -uid "93929EF8-49F4-0D9D-5ABF-13A4DCB401C5";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".unm" no;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "3E18F0C5-4869-4ED0-F757-77871CBF06D3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" -0.8051613 0.22505376 -0.8051613
		 0.22505376 -0.8051613 0.22505377 -0.8051613 0.22505377 -0.8051613 0.22505374 -0.8051613
		 0.22505374 -0.8051613 0.22505374 -0.8051613 0.22505374 -0.8051613 0.22505376 -0.8051613
		 0.22505377 -0.8051613 0.22505376 -0.8051613 0.22505377;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "875AE3A9-4A73-E7B1-CF78-099569CEBAD9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2:12]";
	setAttr ".ix" -type "matrix" 5.0523083993623921 0 0 0 0 0.16454999264092957 0 0 0 0 3.1385696773349152 0
		 -2 1.5722704707296702 -1 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.0000001192092896 1.5791458487510681 -1.0000000596046448 ;
	setAttr ".ps" -type "double2" 180 0.15079939365386963 ;
	setAttr ".r" 5.0523087978363037;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "7C80BCC0-4386-8D8E-148F-A9AA5F398B64";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.42171168 0.25883418 ;
	setAttr ".uvtk[1]" -type "float2" -0.07189671 0.25883418 ;
	setAttr ".uvtk[2]" -type "float2" 0.43473583 0.2696124 ;
	setAttr ".uvtk[3]" -type "float2" 0.68993294 0.2696124 ;
	setAttr ".uvtk[4]" -type "float2" 0.43473583 0.2696124 ;
	setAttr ".uvtk[5]" -type "float2" 0.68993294 0.2696124 ;
	setAttr ".uvtk[6]" -type "float2" -0.07189671 -0.0096566603 ;
	setAttr ".uvtk[7]" -type "float2" 0.42171168 -0.0096566603 ;
	setAttr ".uvtk[8]" -type "float2" 0.69206059 -0.0096566603 ;
	setAttr ".uvtk[9]" -type "float2" 0.69206059 0.25883418 ;
	setAttr ".uvtk[10]" -type "float2" 0.42171168 0.52442735 ;
	setAttr ".uvtk[11]" -type "float2" -0.07189671 0.52442735 ;
	setAttr ".uvtk[12]" -type "float2" 0.69206065 0.52442735 ;
	setAttr ".uvtk[13]" -type "float2" 0.42171168 0.75430065 ;
	setAttr ".uvtk[14]" -type "float2" -0.07189671 0.75430065 ;
	setAttr ".uvtk[15]" -type "float2" 0.69206065 0.75430065 ;
	setAttr ".uvtk[20]" -type "float2" -0.83585393 -0.0096566603 ;
	setAttr ".uvtk[21]" -type "float2" -0.34224558 -0.0096566603 ;
	setAttr ".uvtk[22]" -type "float2" -0.83585393 0.25883418 ;
	setAttr ".uvtk[23]" -type "float2" -0.34224558 0.25883418 ;
	setAttr ".uvtk[24]" -type "float2" -0.83585393 0.52442735 ;
	setAttr ".uvtk[25]" -type "float2" -0.34224558 0.52442735 ;
	setAttr ".uvtk[26]" -type "float2" -0.34224558 0.75430065 ;
	setAttr ".uvtk[27]" -type "float2" -0.83585393 0.75430065 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "7ACA26C5-4BC5-94F4-CB0D-C89BE010D026";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[1]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[2]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[3]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[4]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[5]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[6]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[7]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[8]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[9]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[10]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[11]" -type "float2" -0.73694056 0 ;
	setAttr ".uvtk[38]" -type "float2" -0.73694056 0 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "ADDC4485-4CB3-385C-B471-56A1A0AA5796";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[1]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[2]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[3]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[4]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[5]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[6]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[7]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[8]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[9]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[10]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[11]" -type "float2" -1.1503463 0 ;
	setAttr ".uvtk[38]" -type "float2" -1.1503463 0 ;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "F19DF677-4909-A8AC-6A32-59B793354C97";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[1]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[2]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[3]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[4]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[5]" -type "float2" -0.80883723 0.38516057 ;
	setAttr ".uvtk[6]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[7]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[8]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[9]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[10]" -type "float2" -0.80883723 0.3851606 ;
	setAttr ".uvtk[11]" -type "float2" -0.80883723 0.38516057 ;
	setAttr ".uvtk[38]" -type "float2" -0.80883723 0.38516062 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "61F162A0-42B2-72A9-B4EE-CE9008EECF30";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[109]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[110]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[111]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[112]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[113]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[114]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[115]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[116]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[117]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[118]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[119]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[120]" -type "float3" 0 2.9627681 0 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "2AB349A9-4281-7F70-4CAF-A9B9E6E92166";
	setAttr ".dc" -type "componentList" 1 "f[12:23]";
createNode polyTweak -n "polyTweak12";
	rename -uid "4878EC28-4BE6-3865-CA2D-9B926A18BF66";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[109]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[110]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[111]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[112]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[113]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[114]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[115]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[116]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[117]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[118]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[119]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[120]" -type "float3" 0 2.9627681 0 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "1DDEDEAB-40B4-CC29-4158-E8A4168BBF63";
	setAttr ".dc" -type "componentList" 1 "f[12:23]";
createNode polyTweak -n "polyTweak13";
	rename -uid "F21490CA-499F-2D5C-A3A1-44AB008F3DCD";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[109]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[110]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[111]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[112]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[113]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[114]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[115]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[116]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[117]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[118]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[119]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[120]" -type "float3" 0 2.9627681 0 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "09D50061-4E25-AF3A-33BB-A88C8C982B0B";
	setAttr ".dc" -type "componentList" 1 "f[12:23]";
createNode polyTweak -n "polyTweak14";
	rename -uid "08DCBA2A-4C04-9B73-2905-BD83496625C2";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[109]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[110]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[111]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[112]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[113]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[114]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[115]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[116]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[117]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[118]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[119]" -type "float3" 0 2.9627681 0 ;
	setAttr ".tk[120]" -type "float3" 0 2.9627681 0 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "DCC4A78A-4217-B0F8-7237-AA816BAF64A1";
	setAttr ".dc" -type "componentList" 1 "f[12:23]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "C61D9678-4C2C-3175-2F19-BC855F3429A6";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -444.05116037478012 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 432.14639894307084 338.09522466054091 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV2.out" "tableShape.i";
connectAttr "polyTweakUV2.uvtk[0]" "tableShape.uvst[0].uvtw";
connectAttr "deleteComponent6.og" "feetShape1.i";
connectAttr "polyTweakUV3.uvtk[0]" "feetShape1.uvst[0].uvtw";
connectAttr "deleteComponent3.og" "feetShape3.i";
connectAttr "polyTweakUV4.uvtk[0]" "feetShape3.uvst[0].uvtw";
connectAttr "deleteComponent5.og" "feetShape2.i";
connectAttr "polyTweakUV5.uvtk[0]" "feetShape2.uvst[0].uvtw";
connectAttr "deleteComponent4.og" "feetShape4.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeEdge1.ip";
connectAttr "feetShape4.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak1.out" "polyExtrudeEdge2.ip";
connectAttr "feetShape4.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeEdge3.ip";
connectAttr "feetShape4.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeEdge4.ip";
connectAttr "feetShape4.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeEdge5.ip";
connectAttr "feetShape4.wm" "polyExtrudeEdge5.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeEdge6.ip";
connectAttr "feetShape4.wm" "polyExtrudeEdge6.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeEdge7.ip";
connectAttr "feetShape4.wm" "polyExtrudeEdge7.mp";
connectAttr "polyExtrudeEdge6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeEdge8.ip";
connectAttr "feetShape4.wm" "polyExtrudeEdge8.mp";
connectAttr "polyExtrudeEdge7.out" "polyTweak7.ip";
connectAttr "pasted__polyTweak7.out" "pasted__polyExtrudeEdge8.ip";
connectAttr "feetShape3.wm" "pasted__polyExtrudeEdge8.mp";
connectAttr "pasted__polyExtrudeEdge7.out" "pasted__polyTweak7.ip";
connectAttr "pasted__polyTweak6.out" "pasted__polyExtrudeEdge7.ip";
connectAttr "feetShape3.wm" "pasted__polyExtrudeEdge7.mp";
connectAttr "pasted__polyExtrudeEdge6.out" "pasted__polyTweak6.ip";
connectAttr "pasted__polyTweak5.out" "pasted__polyExtrudeEdge6.ip";
connectAttr "feetShape3.wm" "pasted__polyExtrudeEdge6.mp";
connectAttr "pasted__polyExtrudeEdge5.out" "pasted__polyTweak5.ip";
connectAttr "pasted__polyTweak4.out" "pasted__polyExtrudeEdge5.ip";
connectAttr "feetShape3.wm" "pasted__polyExtrudeEdge5.mp";
connectAttr "pasted__polyExtrudeEdge4.out" "pasted__polyTweak4.ip";
connectAttr "pasted__polyTweak3.out" "pasted__polyExtrudeEdge4.ip";
connectAttr "feetShape3.wm" "pasted__polyExtrudeEdge4.mp";
connectAttr "pasted__polyExtrudeEdge3.out" "pasted__polyTweak3.ip";
connectAttr "pasted__polyTweak2.out" "pasted__polyExtrudeEdge3.ip";
connectAttr "feetShape3.wm" "pasted__polyExtrudeEdge3.mp";
connectAttr "pasted__polyExtrudeEdge2.out" "pasted__polyTweak2.ip";
connectAttr "pasted__polyTweak1.out" "pasted__polyExtrudeEdge2.ip";
connectAttr "feetShape3.wm" "pasted__polyExtrudeEdge2.mp";
connectAttr "pasted__polyExtrudeEdge1.out" "pasted__polyTweak1.ip";
connectAttr "pasted__deleteComponent1.og" "pasted__polyExtrudeEdge1.ip";
connectAttr "feetShape3.wm" "pasted__polyExtrudeEdge1.mp";
connectAttr "pasted__polyCylinder1.out" "pasted__deleteComponent1.ig";
connectAttr "pasted__polyTweak14.out" "pasted__polyExtrudeEdge16.ip";
connectAttr "feetShape1.wm" "pasted__polyExtrudeEdge16.mp";
connectAttr "pasted__polyExtrudeEdge15.out" "pasted__polyTweak14.ip";
connectAttr "pasted__polyTweak13.out" "pasted__polyExtrudeEdge15.ip";
connectAttr "feetShape1.wm" "pasted__polyExtrudeEdge15.mp";
connectAttr "pasted__polyExtrudeEdge14.out" "pasted__polyTweak13.ip";
connectAttr "pasted__polyTweak12.out" "pasted__polyExtrudeEdge14.ip";
connectAttr "feetShape1.wm" "pasted__polyExtrudeEdge14.mp";
connectAttr "pasted__polyExtrudeEdge13.out" "pasted__polyTweak12.ip";
connectAttr "pasted__polyTweak11.out" "pasted__polyExtrudeEdge13.ip";
connectAttr "feetShape1.wm" "pasted__polyExtrudeEdge13.mp";
connectAttr "pasted__polyExtrudeEdge12.out" "pasted__polyTweak11.ip";
connectAttr "pasted__polyTweak10.out" "pasted__polyExtrudeEdge12.ip";
connectAttr "feetShape1.wm" "pasted__polyExtrudeEdge12.mp";
connectAttr "pasted__polyExtrudeEdge11.out" "pasted__polyTweak10.ip";
connectAttr "pasted__polyTweak9.out" "pasted__polyExtrudeEdge11.ip";
connectAttr "feetShape1.wm" "pasted__polyExtrudeEdge11.mp";
connectAttr "pasted__polyExtrudeEdge10.out" "pasted__polyTweak9.ip";
connectAttr "pasted__polyTweak8.out" "pasted__polyExtrudeEdge10.ip";
connectAttr "feetShape1.wm" "pasted__polyExtrudeEdge10.mp";
connectAttr "pasted__polyExtrudeEdge9.out" "pasted__polyTweak8.ip";
connectAttr "pasted__deleteComponent2.og" "pasted__polyExtrudeEdge9.ip";
connectAttr "feetShape1.wm" "pasted__polyExtrudeEdge9.mp";
connectAttr "pasted__polyCylinder2.out" "pasted__deleteComponent2.ig";
connectAttr "pasted__pasted__polyTweak7.out" "pasted__pasted__polyExtrudeEdge8.ip"
		;
connectAttr "feetShape2.wm" "pasted__pasted__polyExtrudeEdge8.mp";
connectAttr "pasted__pasted__polyExtrudeEdge7.out" "pasted__pasted__polyTweak7.ip"
		;
connectAttr "pasted__pasted__polyTweak6.out" "pasted__pasted__polyExtrudeEdge7.ip"
		;
connectAttr "feetShape2.wm" "pasted__pasted__polyExtrudeEdge7.mp";
connectAttr "pasted__pasted__polyExtrudeEdge6.out" "pasted__pasted__polyTweak6.ip"
		;
connectAttr "pasted__pasted__polyTweak5.out" "pasted__pasted__polyExtrudeEdge6.ip"
		;
connectAttr "feetShape2.wm" "pasted__pasted__polyExtrudeEdge6.mp";
connectAttr "pasted__pasted__polyExtrudeEdge5.out" "pasted__pasted__polyTweak5.ip"
		;
connectAttr "pasted__pasted__polyTweak4.out" "pasted__pasted__polyExtrudeEdge5.ip"
		;
connectAttr "feetShape2.wm" "pasted__pasted__polyExtrudeEdge5.mp";
connectAttr "pasted__pasted__polyExtrudeEdge4.out" "pasted__pasted__polyTweak4.ip"
		;
connectAttr "pasted__pasted__polyTweak3.out" "pasted__pasted__polyExtrudeEdge4.ip"
		;
connectAttr "feetShape2.wm" "pasted__pasted__polyExtrudeEdge4.mp";
connectAttr "pasted__pasted__polyExtrudeEdge3.out" "pasted__pasted__polyTweak3.ip"
		;
connectAttr "pasted__pasted__polyTweak2.out" "pasted__pasted__polyExtrudeEdge3.ip"
		;
connectAttr "feetShape2.wm" "pasted__pasted__polyExtrudeEdge3.mp";
connectAttr "pasted__pasted__polyExtrudeEdge2.out" "pasted__pasted__polyTweak2.ip"
		;
connectAttr "pasted__pasted__polyTweak1.out" "pasted__pasted__polyExtrudeEdge2.ip"
		;
connectAttr "feetShape2.wm" "pasted__pasted__polyExtrudeEdge2.mp";
connectAttr "pasted__pasted__polyExtrudeEdge1.out" "pasted__pasted__polyTweak1.ip"
		;
connectAttr "pasted__pasted__deleteComponent1.og" "pasted__pasted__polyExtrudeEdge1.ip"
		;
connectAttr "feetShape2.wm" "pasted__pasted__polyExtrudeEdge1.mp";
connectAttr "pasted__pasted__polyCylinder1.out" "pasted__pasted__deleteComponent1.ig"
		;
connectAttr "polyCube1.out" "deleteComponent2.ig";
connectAttr "polyTweak8.out" "polyExtrudeEdge9.ip";
connectAttr "tableShape.wm" "polyExtrudeEdge9.mp";
connectAttr "deleteComponent2.og" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeEdge10.ip";
connectAttr "tableShape.wm" "polyExtrudeEdge10.mp";
connectAttr "polyExtrudeEdge9.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyCloseBorder1.ip";
connectAttr "polyExtrudeEdge10.out" "polyTweak10.ip";
connectAttr "polyCloseBorder1.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polyNormal2.ip";
connectAttr "polyNormal2.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyCylProj1.ip";
connectAttr "tableShape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyTweakUV2.ip";
connectAttr "pasted__polyExtrudeEdge16.out" "polyTweakUV3.ip";
connectAttr "pasted__polyExtrudeEdge8.out" "polyTweakUV4.ip";
connectAttr "pasted__pasted__polyExtrudeEdge8.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV4.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "deleteComponent3.ig";
connectAttr "polyExtrudeEdge8.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "deleteComponent4.ig";
connectAttr "polyTweakUV5.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "deleteComponent5.ig";
connectAttr "polyTweakUV3.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "deleteComponent6.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "tableShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "feetShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "feetShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "feetShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "feetShape2.iog" ":initialShadingGroup.dsm" -na;
// End of table.0002.ma
