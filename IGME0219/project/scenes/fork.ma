//Maya ASCII 2022 scene
//Name: fork.ma
//Last modified: Fri, Nov 26, 2021 08:09:23 PM
//Codeset: UTF-8
requires maya "2022";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Linux 4.15.0-154-generic #161-Ubuntu SMP Fri Jul 30 13:04:17 UTC 2021 x86_64";
fileInfo "UUID" "23F24D00-0000-7078-61A1-854300000705";
createNode transform -s -n "persp";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000291";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7757161627807783 0.9977582143161503 -1.9612095970648433 ;
	setAttr ".r" -type "double3" -25.538352729698158 470.99999999992224 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000292";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.1843060380413535;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
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
	setAttr ".ow" 4.0834119120464161;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "23F24D00-0000-7078-61A1-818D00000325";
	setAttr ".t" -type "double3" 0 0.40249712287851375 0 ;
	setAttr ".s" -type "double3" 1 0.015326724511626212 1 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "23F24D00-0000-7078-61A1-818D00000324";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.15625004470348358 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 47 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[3]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[5]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[7]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[9]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[11]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[13]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[15]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[17]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[19]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[21]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[23]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[25]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[27]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[29]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[31]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[33]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[35]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[37]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[39]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[41]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[43]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[44]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[45]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[47]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[49]" -type "float3" 0 -4.7683716e-06 0 ;
	setAttr ".pt[51]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[53]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[55]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[57]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[59]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[61]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[63]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".pt[64]" -type "float3" 0 -9.5367432e-07 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000299";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029A";
createNode displayLayer -n "defaultLayer";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029D";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029F";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "23F24D00-0000-7078-61A1-801D00000301";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "23F24D00-0000-7078-61A1-806300000303";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 623\n            -height 349\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 622\n            -height 349\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 623\n            -height 349\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1252\n            -height 742\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp|perspShape\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1252\\n    -height 742\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1252\\n    -height 742\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "23F24D00-0000-7078-61A1-806300000304";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "23F24D00-0000-7078-61A1-818D00000323";
	setAttr ".sa" 32;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "23F24D00-0000-7078-61A1-81B90000033D";
	setAttr ".ics" -type "componentList" 1 "f[0:95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.2782555e-07 0 3.2782555e-07 ;
	setAttr ".rs" 161306185;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.99999934434890747 -0.015326724511626212 -0.99999904632568359 ;
	setAttr ".cbx" -type "double3" 1 0.015326724511626212 0.99999970197677612 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "23F24D00-0000-7078-61A1-81E80000037E";
	setAttr ".dc" -type "componentList" 1 "f[128:159]";
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "23F24D00-0000-7078-61A1-82380000040D";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.2782555e-07 -0.015326637 3.2782555e-07 ;
	setAttr ".rs" 157028173;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.99999934434890747 -0.015326695278219169 -0.99999904632568359 ;
	setAttr ".cbx" -type "double3" 1 -0.015326578344590999 0.99999970197677612 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "23F24D00-0000-7078-61A1-825C00000434";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.043380536 4.1723251e-07 ;
	setAttr ".rs" 910287786;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1268423795700073 0.043380475879974449 -1.1268420219421387 ;
	setAttr ".cbx" -type "double3" 1.1268430948257446 0.043380592813602618 1.1268428564071655 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "23F24D00-0000-7078-61A1-825C00000435";
	setAttr ".uopa" yes;
	setAttr -s 106 ".tk";
	setAttr ".tk[65]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".tk[66]" -type "float3" -3.7252903e-09 9.5367432e-06 -4.6566129e-10 ;
	setAttr ".tk[67]" -type "float3" -3.7252903e-09 7.9981983e-06 0 ;
	setAttr ".tk[68]" -type "float3" -3.7252903e-09 7.2605908e-06 0 ;
	setAttr ".tk[69]" -type "float3" -3.7252903e-09 9.5367432e-06 -4.6566129e-10 ;
	setAttr ".tk[70]" -type "float3" -5.5879354e-09 7.9981983e-06 0 ;
	setAttr ".tk[71]" -type "float3" -5.5879354e-09 9.5367432e-06 0 ;
	setAttr ".tk[72]" -type "float3" -3.7252903e-09 7.9981983e-06 3.7252903e-09 ;
	setAttr ".tk[73]" -type "float3" -3.7252903e-09 9.5367432e-06 3.7252903e-09 ;
	setAttr ".tk[74]" -type "float3" 1.8626451e-09 7.9981983e-06 5.5879354e-09 ;
	setAttr ".tk[75]" -type "float3" 1.8626451e-09 9.5367432e-06 5.5879354e-09 ;
	setAttr ".tk[76]" -type "float3" 2.7939677e-09 7.9981983e-06 0 ;
	setAttr ".tk[77]" -type "float3" 2.7939677e-09 9.5367432e-06 0 ;
	setAttr ".tk[78]" -type "float3" -4.6566129e-10 7.9981983e-06 3.7252903e-09 ;
	setAttr ".tk[79]" -type "float3" -4.6566129e-10 9.5367432e-06 3.7252903e-09 ;
	setAttr ".tk[80]" -type "float3" -4.4408921e-16 7.9981983e-06 -3.7252903e-09 ;
	setAttr ".tk[81]" -type "float3" -4.4408921e-16 9.5367432e-06 -3.7252903e-09 ;
	setAttr ".tk[82]" -type "float3" 0 7.9981983e-06 3.7252903e-09 ;
	setAttr ".tk[83]" -type "float3" 0 9.5367432e-06 3.7252903e-09 ;
	setAttr ".tk[84]" -type "float3" 1.8626451e-09 7.9981983e-06 3.7252903e-09 ;
	setAttr ".tk[85]" -type "float3" 1.8626451e-09 9.5367432e-06 3.7252903e-09 ;
	setAttr ".tk[86]" -type "float3" -1.8626451e-09 7.9981983e-06 3.7252903e-09 ;
	setAttr ".tk[87]" -type "float3" -1.8626451e-09 9.5367432e-06 3.7252903e-09 ;
	setAttr ".tk[88]" -type "float3" -3.7252903e-09 7.9981983e-06 3.7252903e-09 ;
	setAttr ".tk[89]" -type "float3" -3.7252903e-09 9.5367432e-06 3.7252903e-09 ;
	setAttr ".tk[90]" -type "float3" -3.7252903e-09 7.9981983e-06 1.8626451e-09 ;
	setAttr ".tk[91]" -type "float3" -3.7252903e-09 9.5367432e-06 1.8626451e-09 ;
	setAttr ".tk[92]" -type "float3" 3.7252903e-09 7.9981983e-06 0 ;
	setAttr ".tk[93]" -type "float3" 3.7252903e-09 9.5367432e-06 0 ;
	setAttr ".tk[94]" -type "float3" -3.7252903e-09 7.9981983e-06 -9.3132257e-10 ;
	setAttr ".tk[95]" -type "float3" -3.7252903e-09 9.5367432e-06 -9.3132257e-10 ;
	setAttr ".tk[96]" -type "float3" 0 7.9981983e-06 -3.5527137e-15 ;
	setAttr ".tk[97]" -type "float3" 0 9.5367432e-06 -3.5527137e-15 ;
	setAttr ".tk[98]" -type "float3" 0 7.9981983e-06 4.6566129e-10 ;
	setAttr ".tk[99]" -type "float3" 0 9.5367432e-06 4.6566129e-10 ;
	setAttr ".tk[100]" -type "float3" -7.4505806e-09 7.9981983e-06 -9.3132257e-10 ;
	setAttr ".tk[101]" -type "float3" -7.4505806e-09 9.5367432e-06 -9.3132257e-10 ;
	setAttr ".tk[102]" -type "float3" 5.5879354e-09 7.9981983e-06 0 ;
	setAttr ".tk[103]" -type "float3" 5.5879354e-09 9.5367432e-06 0 ;
	setAttr ".tk[104]" -type "float3" 1.8626451e-09 7.9981983e-06 -1.8626451e-09 ;
	setAttr ".tk[105]" -type "float3" 1.8626451e-09 9.5367432e-06 -1.8626451e-09 ;
	setAttr ".tk[106]" -type "float3" -1.8626451e-09 7.9981983e-06 -5.5879354e-09 ;
	setAttr ".tk[107]" -type "float3" -1.8626451e-09 9.5367432e-06 -5.5879354e-09 ;
	setAttr ".tk[108]" -type "float3" 0 7.9981983e-06 0 ;
	setAttr ".tk[109]" -type "float3" 0 9.5367432e-06 0 ;
	setAttr ".tk[110]" -type "float3" 9.3132257e-10 7.9981983e-06 -3.7252903e-09 ;
	setAttr ".tk[111]" -type "float3" 9.3132257e-10 9.5367432e-06 -3.7252903e-09 ;
	setAttr ".tk[112]" -type "float3" 1.7763568e-15 7.9981983e-06 3.7252903e-09 ;
	setAttr ".tk[113]" -type "float3" 1.7763568e-15 9.5367432e-06 3.7252903e-09 ;
	setAttr ".tk[114]" -type "float3" 0 7.9981983e-06 0 ;
	setAttr ".tk[115]" -type "float3" 0 9.5367432e-06 0 ;
	setAttr ".tk[116]" -type "float3" 0 7.9981983e-06 -3.7252903e-09 ;
	setAttr ".tk[117]" -type "float3" 0 9.5367432e-06 -3.7252903e-09 ;
	setAttr ".tk[118]" -type "float3" 3.7252903e-09 7.9981983e-06 0 ;
	setAttr ".tk[119]" -type "float3" 3.7252903e-09 9.5367432e-06 0 ;
	setAttr ".tk[120]" -type "float3" 3.7252903e-09 7.9981983e-06 3.7252903e-09 ;
	setAttr ".tk[121]" -type "float3" 3.7252903e-09 9.5367432e-06 3.7252903e-09 ;
	setAttr ".tk[122]" -type "float3" 1.8626451e-09 7.9981983e-06 -1.8626451e-09 ;
	setAttr ".tk[123]" -type "float3" 1.8626451e-09 9.5367432e-06 -1.8626451e-09 ;
	setAttr ".tk[124]" -type "float3" -3.7252903e-09 7.9981983e-06 -2.7939677e-09 ;
	setAttr ".tk[125]" -type "float3" -3.7252903e-09 9.5367432e-06 -2.7939677e-09 ;
	setAttr ".tk[126]" -type "float3" 3.7252903e-09 7.9981983e-06 4.6566129e-10 ;
	setAttr ".tk[127]" -type "float3" 3.7252903e-09 9.5367432e-06 4.6566129e-10 ;
	setAttr ".tk[128]" -type "float3" 0 7.9981983e-06 -1.7763568e-15 ;
	setAttr ".tk[129]" -type "float3" 0 7.2605908e-06 -1.7763568e-15 ;
	setAttr ".tk[130]" -type "float3" 0.12440568 3.830389 -0.024745749 ;
	setAttr ".tk[131]" -type "float3" 0.11718749 3.8303881 -0.048540644 ;
	setAttr ".tk[132]" -type "float3" -4.1582386e-08 3.8303814 1.802227e-08 ;
	setAttr ".tk[133]" -type "float3" 0.105466 3.8303814 -0.070470124 ;
	setAttr ".tk[134]" -type "float3" 0.08969146 3.8303814 -0.089691401 ;
	setAttr ".tk[135]" -type "float3" 0.070470192 3.8303814 -0.10546595 ;
	setAttr ".tk[136]" -type "float3" 0.048540715 3.8303814 -0.11718763 ;
	setAttr ".tk[137]" -type "float3" 0.024745837 3.8303814 -0.12440564 ;
	setAttr ".tk[138]" -type "float3" 1.5120873e-08 3.8303814 -0.12684299 ;
	setAttr ".tk[139]" -type "float3" -0.024745813 3.8303814 -0.12440565 ;
	setAttr ".tk[140]" -type "float3" -0.048540708 3.8303814 -0.11718766 ;
	setAttr ".tk[141]" -type "float3" -0.070470192 3.8303814 -0.10546604 ;
	setAttr ".tk[142]" -type "float3" -0.089691468 3.8303814 -0.089691505 ;
	setAttr ".tk[143]" -type "float3" -0.10546608 3.8303814 -0.070470177 ;
	setAttr ".tk[144]" -type "float3" -0.11718771 3.8303814 -0.048540715 ;
	setAttr ".tk[145]" -type "float3" -0.12440572 3.8303814 -0.024745855 ;
	setAttr ".tk[146]" -type "float3" -0.12684307 3.8303814 -2.3560172e-08 ;
	setAttr ".tk[147]" -type "float3" -0.12440573 3.8303814 0.024745837 ;
	setAttr ".tk[148]" -type "float3" -0.11718778 3.8303814 0.048540719 ;
	setAttr ".tk[149]" -type "float3" -0.10546611 3.8303814 0.070470221 ;
	setAttr ".tk[150]" -type "float3" -0.089691572 3.8303814 0.08969152 ;
	setAttr ".tk[151]" -type "float3" -0.070470236 3.8303814 0.10546607 ;
	setAttr ".tk[152]" -type "float3" -0.048540775 3.8303814 0.11718775 ;
	setAttr ".tk[153]" -type "float3" -0.024745911 3.8303814 0.12440576 ;
	setAttr ".tk[154]" -type "float3" -6.2373601e-08 3.8303814 0.12684311 ;
	setAttr ".tk[155]" -type "float3" 0.024745801 3.8303814 0.12440577 ;
	setAttr ".tk[156]" -type "float3" 0.048540704 3.8303814 0.11718777 ;
	setAttr ".tk[157]" -type "float3" 0.070470184 3.8303814 0.10546614 ;
	setAttr ".tk[158]" -type "float3" 0.089691468 3.8303814 0.089691602 ;
	setAttr ".tk[159]" -type "float3" 0.10546608 3.8303814 0.070470259 ;
	setAttr ".tk[160]" -type "float3" 0.11718771 3.8303814 0.048540771 ;
	setAttr ".tk[161]" -type "float3" 0.12440572 3.8303814 0.02474587 ;
	setAttr ".tk[162]" -type "float3" 0.12684307 3.8303814 1.802227e-08 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "23F24D00-0000-7078-61A1-826700000459";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.11187229 4.1723251e-07 ;
	setAttr ".rs" 774852949;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2836664915084839 0.11187222915911324 -1.2836661338806152 ;
	setAttr ".cbx" -type "double3" 1.2836672067642212 0.11187234609274141 1.2836669683456421 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "23F24D00-0000-7078-61A1-82670000045A";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk[162:194]" -type "float3"  0.15381065 4.46877956 -0.03059482
		 0.14488642 4.46877956 -0.060013965 -5.5558626e-08 4.46877956 -5.5558626e-08 0.13039434
		 4.46877956 -0.087126777 0.11089125 4.46877956 -0.11089125 0.087126784 4.46877956
		 -0.13039435 0.060013976 4.46877956 -0.14488661 0.030594848 4.46877956 -0.15381069
		 1.4547258e-08 4.46877956 -0.15682414 -0.03059482 4.46877956 -0.15381069 -0.060013976
		 4.46877956 -0.14488663 -0.087126784 4.46877956 -0.13039444 -0.11089126 4.46877956
		 -0.11089137 -0.13039443 4.46877956 -0.087126829 -0.14488663 4.46877956 -0.060014039
		 -0.15381071 4.46877956 -0.030594947 -0.15682416 4.46877956 -1.0696962e-07 -0.15381071
		 4.46877956 0.030594781 -0.1448867 4.46877956 0.060013909 -0.13039446 4.46877956 0.087126754
		 -0.11089138 4.46877956 0.11089124 -0.087126829 4.46877956 0.13039435 -0.060014039
		 4.46877956 0.14488661 -0.030594947 4.46877956 0.15381069 -8.1264055e-08 4.46877956
		 0.15682414 0.030594811 4.46877956 0.15381069 0.060013965 4.46877956 0.14488663 0.087126777
		 4.46877956 0.13039443 0.11089126 4.46877956 0.11089135 0.13039443 4.46877956 0.087126784
		 0.14488663 4.46877956 0.060013976 0.15381071 4.46877956 0.030594818 0.15682416 4.46877956
		 -5.5558626e-08;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "23F24D00-0000-7078-61A1-82800000047E";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.16405648 4.7683716e-07 ;
	setAttr ".rs" 2131317682;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5719461441040039 0.16405641865352769 -1.5719456672668457 ;
	setAttr ".cbx" -type "double3" 1.5719468593597412 0.16405653558715586 1.5719466209411621 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "23F24D00-0000-7078-61A1-82800000047F";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk[194:226]" -type "float3"  0.28274012 3.4047842 -0.056240503
		 0.26633534 3.4047842 -0.11031978 -1.0212982e-07 3.4047842 -1.0212982e-07 0.23969553
		 3.4047842 -0.16015951 0.20384422 3.4047842 -0.20384423 0.16015953 3.4047842 -0.23969556
		 0.11031981 3.4047842 -0.26633561 0.056240544 3.4047842 -0.28274029 2.674129e-08 3.4047842
		 -0.28827959 -0.056240503 3.4047842 -0.28274029 -0.1103198 3.4047842 -0.26633573 -0.16015953
		 3.4047842 -0.23969571 -0.20384428 3.4047842 -0.20384444 -0.23969568 3.4047842 -0.16015962
		 -0.2663357 3.4047842 -0.11031991 -0.28274032 3.4047842 -0.056240715 -0.28827965 3.4047842
		 -1.9663531e-07 -0.28274035 3.4047842 0.056240391 -0.26633584 3.4047842 0.11031967
		 -0.23969576 3.4047842 0.16015945 -0.20384447 3.4047842 0.20384419 -0.16015963 3.4047842
		 0.23969556 -0.11031991 3.4047842 0.26633561 -0.056240711 3.4047842 0.28274029 -1.4938252e-07
		 3.4047842 0.28827959 0.056240436 3.4047842 0.28274029 0.11031977 3.4047842 0.2663357
		 0.16015953 3.4047842 0.23969567 0.20384428 3.4047842 0.20384434 0.23969568 3.4047842
		 0.16015953 0.2663357 3.4047842 0.1103198 0.28274032 3.4047842 0.056240488 0.28827965
		 3.4047842 -1.0212982e-07;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "23F24D00-0000-7078-61A1-8289000004A3";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.17710252 4.7683716e-07 ;
	setAttr ".rs" 1266751589;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5880898237228394 0.17710246968130716 -1.5880893468856812 ;
	setAttr ".cbx" -type "double3" 1.5880905389785767 0.17710258661493533 1.5880903005599976 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "23F24D00-0000-7078-61A1-8289000004A4";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk[226:258]" -type "float3"  0.015833445 0.85119587 -0.0031494678
		 0.01491478 0.85119587 -0.0061779059 -5.7192668e-09 0.85119587 -6.3313985e-09 0.013422947
		 0.85119587 -0.0089689326 0.011415279 0.85119587 -0.01141528 0.0089689307 0.85119587
		 -0.013422951 0.0061779073 0.85119587 -0.014914791 0.0031494703 0.85119587 -0.015833456
		 1.4975128e-09 0.85119587 -0.016143654 -0.0031494678 0.85119587 -0.01583346 -0.0061779069
		 0.85119587 -0.014914798 -0.0089689316 0.85119587 -0.013422962 -0.011415282 0.85119587
		 -0.011415293 -0.013422957 0.85119587 -0.0089689419 -0.014914796 0.85119587 -0.0061779171
		 -0.015833464 0.85119587 -0.0031494815 -0.016143657 0.85119587 -1.1623705e-08 -0.015833464
		 0.85119587 0.0031494601 -0.014914802 0.85119587 0.0061778994 -0.013422964 0.85119587
		 0.0089689251 -0.011415293 0.85119587 0.011415275 -0.0089689419 0.85119587 0.013422949
		 -0.0061779171 0.85119587 0.014914789 -0.0031494801 0.85119587 0.015833452 -8.3654195e-09
		 0.85119587 0.016143654 0.0031494647 0.85119587 0.015833456 0.0061779041 0.85119587
		 0.014914793 0.0089689326 0.85119587 0.013422957 0.011415282 0.85119587 0.011415285
		 0.013422957 0.85119587 0.0089689335 0.014914796 0.85119587 0.0061779069 0.015833464
		 0.85119587 0.0031494661 0.016143657 0.85119587 -6.3313985e-09;
createNode polyTweak -n "polyTweak5";
	rename -uid "23F24D00-0000-7078-61A1-82A0000004BD";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk[258:290]" -type "float3"  -0.024881126 0.85119587 0.0049491636
		 -0.023437507 0.85119587 0.0097081373 8.9874188e-09 0.85119587 9.94934e-09 -0.021093205
		 0.85119587 0.014094034 -0.017938294 0.85119587 0.017938295 -0.014094035 0.85119587
		 0.02109321 -0.00970814 0.85119587 0.023437528 -0.0049491674 0.85119587 0.024881143
		 -2.3532347e-09 0.85119587 0.025368599 0.0049491636 0.85119587 0.024881151 0.00970814
		 0.85119587 0.023437537 0.014094036 0.85119587 0.021093225 0.017938299 0.85119587
		 0.017938314 0.021093218 0.85119587 0.014094051 0.023437535 0.85119587 0.0097081568
		 0.024881151 0.85119587 0.0049491851 0.025368605 0.85119587 1.8265823e-08 0.024881156
		 0.85119587 -0.0049491511 0.023437543 0.85119587 -0.009708127 0.021093229 0.85119587
		 -0.014094026 0.01793832 0.85119587 -0.01793829 0.014094051 0.85119587 -0.021093206
		 0.0097081549 0.85119587 -0.023437526 0.0049491827 0.85119587 -0.024881141 1.314566e-08
		 0.85119587 -0.025368599 -0.0049491576 0.85119587 -0.024881143 -0.0097081345 0.85119587
		 -0.023437532 -0.014094034 0.85119587 -0.021093218 -0.017938299 0.85119587 -0.017938305
		 -0.021093218 0.85119587 -0.014094038 -0.023437535 0.85119587 -0.0097081382 -0.024881151
		 0.85119587 -0.0049491613 -0.025368605 0.85119587 9.94934e-09;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "23F24D00-0000-7078-61A1-82A0000004BE";
	setAttr ".dc" -type "componentList" 1 "f[32:63]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "23F24D00-0000-7078-61A1-82D80000050A";
	setAttr ".dc" -type "componentList" 2 "f[16]" "f[64:127]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "23F24D00-0000-7078-61A1-82DD00000516";
	setAttr ".dc" -type "componentList" 1 "f[0:30]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "23F24D00-0000-7078-61A1-8405000005F5";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "23F24D00-0000-7078-61A1-8405000005F6";
	setAttr ".uopa" yes;
	setAttr -s 45 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[3]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[5]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[7]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[9]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[11]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[13]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[15]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[17]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[19]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[21]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[23]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[25]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[27]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[29]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[31]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[33]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[35]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[37]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[39]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[41]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[43]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[45]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[47]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[49]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[51]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[53]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[55]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[57]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[59]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[61]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[63]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[64]" -type "float3" 0 -1.6496828 0 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "23F24D00-0000-7078-61A1-84200000060C";
	setAttr ".ics" -type "componentList" 3 "vtx[45]" "vtx[47]" "vtx[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".d" 0.015;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "23F24D00-0000-7078-61A1-844E0000062A";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "23F24D00-0000-7078-61A1-844E0000062B";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[2]" -type "float3" -0.001211535 4.6796567e-10 -0.01297656 ;
	setAttr ".tk[3]" -type "float3" 0.0013433472 -2.3398279e-09 -0.012963577 ;
	setAttr ".tk[5]" -type "float3" -0.0037198586 4.6796567e-10 -0.012490869 ;
	setAttr ".tk[7]" -type "float3" -0.0060852296 4.6796567e-10 -0.011525149 ;
	setAttr ".tk[9]" -type "float3" -0.0082167499 4.6796567e-10 -0.010116531 ;
	setAttr ".tk[11]" -type "float3" -0.010032505 4.6796567e-10 -0.0083191367 ;
	setAttr ".tk[13]" -type "float3" -0.011462718 4.6796567e-10 -0.006202043 ;
	setAttr ".tk[15]" -type "float3" -0.012452426 4.6796567e-10 -0.0038466072 ;
	setAttr ".tk[17]" -type "float3" -0.012963589 4.6796567e-10 -0.0013433484 ;
	setAttr ".tk[19]" -type "float3" -0.012976575 4.6796567e-10 0.0012115337 ;
	setAttr ".tk[21]" -type "float3" -0.012490881 4.6796567e-10 0.0037198598 ;
	setAttr ".tk[23]" -type "float3" -0.011525163 4.6796567e-10 0.0060852314 ;
	setAttr ".tk[25]" -type "float3" -0.010116538 4.6796567e-10 0.0082167527 ;
	setAttr ".tk[27]" -type "float3" -0.0083191451 4.6796567e-10 0.010032508 ;
	setAttr ".tk[29]" -type "float3" -0.0062020491 4.6796567e-10 0.01146272 ;
	setAttr ".tk[31]" -type "float3" -0.0038466146 4.6796567e-10 0.012452425 ;
	setAttr ".tk[33]" -type "float3" -0.0013433556 4.6796567e-10 0.012963593 ;
	setAttr ".tk[35]" -type "float3" 0.0012115292 4.6796567e-10 0.012976578 ;
	setAttr ".tk[37]" -type "float3" 0.0037198539 4.6796567e-10 0.012490881 ;
	setAttr ".tk[39]" -type "float3" 0.0060852258 4.6796567e-10 0.011525163 ;
	setAttr ".tk[41]" -type "float3" 0.0082167489 4.6796567e-10 0.01011654 ;
	setAttr ".tk[43]" -type "float3" 0.0100325 4.6796567e-10 0.0083191441 ;
	setAttr ".tk[45]" -type "float3" 0.011462716 4.79177e-07 0.0062020486 ;
	setAttr ".tk[47]" -type "float3" 0.012452425 4.79177e-07 0.0038466123 ;
	setAttr ".tk[49]" -type "float3" 0.012963588 4.6796567e-10 0.001343352 ;
	setAttr ".tk[51]" -type "float3" 0.012976572 4.6796567e-10 -0.0012115312 ;
	setAttr ".tk[53]" -type "float3" 0.012490877 4.6796567e-10 -0.0037198591 ;
	setAttr ".tk[55]" -type "float3" 0.011525159 4.6796567e-10 -0.0060852324 ;
	setAttr ".tk[57]" -type "float3" 0.010116534 4.6796567e-10 -0.0082167527 ;
	setAttr ".tk[59]" -type "float3" 0.0083191358 4.6796567e-10 -0.010032508 ;
	setAttr ".tk[61]" -type "float3" 0.0062020416 4.6796567e-10 -0.011462724 ;
	setAttr ".tk[63]" -type "float3" 0.0038466032 4.6796567e-10 -0.012452432 ;
	setAttr ".tk[64]" -type "float3" -4.9712892e-09 4.7636917e-07 3.1885758e-09 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "23F24D00-0000-7078-61A1-847000000661";
	setAttr ".ics" -type "componentList" 1 "vtx[0:224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".d" 0.015;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "23F24D00-0000-7078-61A1-84B200000684";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0
		 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".d" 0.015;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "23F24D00-0000-7078-61A1-84B200000685";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[2]" -type "float3" 0.0038583134 0 0.0091214338 ;
	setAttr ".tk[3]" -type "float3" 0.0020046735 0 0.0096988883 ;
	setAttr ".tk[5]" -type "float3" 0.0055636819 0 0.0081934482 ;
	setAttr ".tk[7]" -type "float3" 0.0070552416 0 0.0069505963 ;
	setAttr ".tk[9]" -type "float3" 0.0082756709 0 0.0054406323 ;
	setAttr ".tk[11]" -type "float3" 0.0091780722 0 0.0037215892 ;
	setAttr ".tk[13]" -type "float3" 0.0097277677 0 0.0018595275 ;
	setAttr ".tk[15]" -type "float3" 0.0099036274 0 -7.399507e-05 ;
	setAttr ".tk[17]" -type "float3" 0.0096988957 0 -0.0020046742 ;
	setAttr ".tk[19]" -type "float3" 0.0091214431 0 -0.0038583153 ;
	setAttr ".tk[21]" -type "float3" 0.0081934575 0 -0.0055636847 ;
	setAttr ".tk[23]" -type "float3" 0.0069506019 0 -0.0070552439 ;
	setAttr ".tk[25]" -type "float3" 0.0054406393 0 -0.0082756747 ;
	setAttr ".tk[27]" -type "float3" 0.0037215962 0 -0.0091780759 ;
	setAttr ".tk[29]" -type "float3" 0.0018595334 0 -0.0097277677 ;
	setAttr ".tk[31]" -type "float3" -7.3989766e-05 0 -0.0099036312 ;
	setAttr ".tk[33]" -type "float3" -0.0020046702 0 -0.0096989004 ;
	setAttr ".tk[35]" -type "float3" -0.003858312 0 -0.0091214469 ;
	setAttr ".tk[37]" -type "float3" -0.0055636819 0 -0.0081934603 ;
	setAttr ".tk[39]" -type "float3" -0.0070552402 0 -0.0069506047 ;
	setAttr ".tk[41]" -type "float3" -0.0082756709 0 -0.0054406403 ;
	setAttr ".tk[43]" -type "float3" -0.0091780722 0 -0.0037215962 ;
	setAttr ".tk[45]" -type "float3" -0.0097277677 0 -0.0018595331 ;
	setAttr ".tk[47]" -type "float3" -0.0099036274 9.5367432e-07 7.3990785e-05 ;
	setAttr ".tk[49]" -type "float3" -0.0096988967 9.5367432e-07 0.0020046711 ;
	setAttr ".tk[51]" -type "float3" -0.0091214413 -4.7683716e-07 0.0038583134 ;
	setAttr ".tk[53]" -type "float3" -0.0081934556 0 0.0055636833 ;
	setAttr ".tk[55]" -type "float3" -0.0069506005 0 0.0070552435 ;
	setAttr ".tk[57]" -type "float3" -0.0054406342 0 0.0082756747 ;
	setAttr ".tk[59]" -type "float3" -0.0037215892 0 0.0091780759 ;
	setAttr ".tk[61]" -type "float3" -0.0018595259 0 0.0097277677 ;
	setAttr ".tk[63]" -type "float3" 7.3998948e-05 0 0.0099036312 ;
	setAttr ".tk[64]" -type "float3" 2.9262122e-09 9.5367432e-07 -3.5627226e-09 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "23F24D00-0000-7078-61A1-852600000703";
	setAttr ".dc" -type "componentList" 1 "f[160:191]";
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
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "deleteComponent5.og" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace6.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polyTweak6.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "deleteComponent4.og" "polyTweak6.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweak7.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak7.ip";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyTweak8.out" "polyMergeVert5.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak8.ip";
connectAttr "polyMergeVert5.out" "deleteComponent5.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of fork.ma
