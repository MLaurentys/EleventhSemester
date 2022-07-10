//Maya ASCII 2022 scene
//Name: clock_check_1.0009.ma
//Last modified: Tue, Dec 14, 2021 11:02:36 PM
//Codeset: UTF-8
requires maya "2022";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Linux 4.15.0-154-generic #161-Ubuntu SMP Fri Jul 30 13:04:17 UTC 2021 x86_64";
fileInfo "UUID" "8837ED00-0000-18B6-61B9-4CBC00000351";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "716505CA-4F43-937B-6022-F0877729A408";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.23281628410046157 -0.11429997283941812 1.9123074394859434 ;
	setAttr ".r" -type "double3" 3.2616472690906879 -724.19999999982849 2.4914993230701792e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AF7FA3EA-4220-BD29-0361-C8BBFCF87EC1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 1.9150643112134396;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4D13B833-4A85-5151-0312-7D9117393141";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C8804B4B-4AFC-CB9A-AF3F-FA9B0E722782";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.893664121050588;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "14B52A8E-46A6-C7D8-4044-72AB547F8448";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.098520849230085944 -0.089614924455366479 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AAB32C5A-4517-266F-E0A1-70A7ACF03DD4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.0776378929886778;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "7BC04D4B-404C-57CE-7543-FB93A90FE5A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "30F7C31A-49BE-B19E-34BC-38A135FE1976";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.7705416946932884;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	rename -uid "8615DD91-4CD3-AEE7-8054-B39784F28799";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.04003929270041634 0 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "0BF5BAED-491B-3C04-4AF8-67A5B58C727F";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "Z:/igme219/laurM_Proj/project/sourceimages/clock4.jpg";
	setAttr ".cov" -type "short2" 1000 1000 ;
	setAttr ".dlc" no;
	setAttr ".w" 2.25;
	setAttr ".h" 2.25;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "clock";
	rename -uid "93511C35-4BDF-E933-91B3-D8AAFD4C24BD";
	setAttr ".t" -type "double3" 0 -1.0840491722365893 0 ;
	setAttr ".s" -type "double3" 0.66162768789169724 -0.048968969921792865 0.49211976241363886 ;
createNode mesh -n "clockShape" -p "clock";
	rename -uid "3E67BDB2-40BA-46A3-0371-6DBD8654C89E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.45587771246209741 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".dr" 1;
createNode joint -n "joint1";
	rename -uid "FCC8348F-4A35-4BB0-4D9A-91A744493418";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.014012903071776273 0.51779583348147928 -0.0022462109052627799 ;
	setAttr ".r" -type "double3" -1.349553338697538 -0.0033312911813665569 -0.21593239209047754 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -80.908856164000213 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -2.4673858146674939e-08 6.0969327637091287e-06 4.6940970272395109e-08 ;
	setAttr ".bps" -type "matrix" 0.15800561253743506 0 0.98743821396919296 0 0 1 0 0
		 -0.98743821396919296 0 0.15800561253743506 0 0.014012903071776273 0.51779583348147928 -0.0022462109052627799 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "7B4E6C10-4EA9-A03B-2211-898B6C2F1EFA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.003055892849689228 -0.75511382293549678 -0.0058137063142700502 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 80.908856164000213 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.9999999999999849 0 -1.7312929842527858e-07 0 0 1 0 0
		 1.7312929842527858e-07 0 0.9999999999999849 0 0.020236427072844426 -0.2373179894540175 -0.00014730375498341443 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector1" -p "joint1";
	rename -uid "855D42BC-4BE8-36B5-A71B-C0AA49BD1B16";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle1";
	rename -uid "EC9F025D-4AFC-EC4E-2A5F-39B25F090072";
	setAttr ".roc" yes;
createNode transform -n "arm";
	rename -uid "EB720F40-4101-C091-9F81-2A92EEFEC297";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "armShape" -p "arm";
	rename -uid "C1D08018-44D8-BEC3-2A94-B7BF614862C6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81974232196807861 -0.045301377773284912 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[6]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[7]" -type "float3" 3.7266873e-06 0 -1.8626451e-09 ;
	setAttr ".pt[9]" -type "float3" 3.7266873e-06 0 -1.8626451e-09 ;
	setAttr ".pt[10]" -type "float3" 3.7238933e-06 0 -1.1641532e-09 ;
	setAttr ".pt[11]" -type "float3" 3.7238933e-06 0 -1.1641532e-09 ;
	setAttr ".pt[13]" -type "float3" 3.7238933e-06 0 -1.1641532e-09 ;
	setAttr ".pt[14]" -type "float3" 3.7266873e-06 0 -1.8626451e-09 ;
	setAttr ".pt[15]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[17]" -type "float3" 3.7238933e-06 0 -1.1641532e-09 ;
	setAttr ".pt[18]" -type "float3" 3.7266873e-06 0 -1.8626451e-09 ;
	setAttr ".pt[27]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[29]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[30]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[32]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[33]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[34]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[36]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[37]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[47]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[51]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[54]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[56]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[57]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[59]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".vcs" 2;
createNode transform -n "weigth" -p "arm";
	rename -uid "8C5F6614-4AF6-AA2A-1E8B-1EBE1C15B285";
	setAttr ".t" -type "double3" -0.00030942551544305141 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "weigthShape" -p "weigth";
	rename -uid "7D9DE261-4EE5-9AD0-D4EE-88A4B778A245";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.24513714760541916 0.60202476382255554 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape2" -p "weigth";
	rename -uid "9D33E83D-46B0-02EA-6769-BEAA9F02EDC0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.91242051124572754 0.53572187200188637 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 120 ".uvst[0].uvsp[0:119]" -type "float2" 0.44067106 0 0.44067106
		 0.42858538 0.44067106 0.14288749 0.17515898 0 0.17515898 0.14288749 0.17515898 0.071443744
		 0.087579489 0 0.087579489 0.071443744 0.087579489 0.14288749 0.31698582 0 0.31698582
		 0.14288749 0.17515898 0.42858538 0.17515898 0.28574896 0.17515898 0.21431823 0.087579489
		 0.21431823 0.087579489 0.28574896 0.17515898 0.35716718 0.087579489 0.35716718 0.087579489
		 0.42858538 0.44067106 0.28574896 0.31698582 0.28574896 0.31698582 0.42858538 0.68301415
		 0 0.68301415 0.42858538 0.68301415 0.14288749 0.55932891 0 0.55932891 0.14288749
		 0.68301415 0.28574896 0.55932891 0.28574896 0.55932891 0.42858538 0.82484102 0 0.82484102
		 0.14288749 0.82484102 0.071443744 0.91242051 1 0.91242051 0.071443744 0.91242051
		 0.14288749 0.82484102 0.28574896 0.82484102 0.21431823 0.91242051 0.21431823 0.91242051
		 0.28574896 0.82484102 0.42858538 0.82484102 0.35716718 0.91242051 0.35716718 0.91242051
		 0.42858538 0.44067106 0.71425104 0.17515898 0.71425104 0.17515898 0.57141459 0.17515898
		 0.5 0.087579489 0.5 0.087579489 0.57141459 0.17515898 0.64283282 0.087579489 0.64283282
		 0.087579489 0.71425104 0.44067106 0.57141459 0.31698582 0.57141459 0.31698582 0.71425104
		 0.17515898 0.85711253 0.17515898 0.78568178 0.087579489 0.78568178 0.087579489 0.85711253
		 0 0 0.17515898 0.92855626 0.087579489 0.92855626 0.44067106 0.85711253 0.31698582
		 0.85711253 0.68301415 0.71425104 0.68301415 0.57141459 0.55932891 0.57141459 0.55932891
		 0.71425104 0.82484102 0.57141459 0.82484102 0.5 0.91242051 0.5 0.91242051 0.57141459
		 0.82484102 0.71425104 0.82484102 0.64283282 0.91242051 0.64283282 0.91242051 0.71425104
		 0.68301415 0.85711253 0.55932891 0.85711253 0.82484102 0.85711253 0.82484102 0.78568178
		 0.91242051 0.78568178 0.91242051 0.85711253 1 1 0.82484102 0.92855626 0.91242051
		 0.92855626 1 0.42858538 0 0.071443744 0 0.14288749 0 0.21431823 0 0.28574896 0 0.35716718
		 1 0.14288749 0.91242051 0 1 0.071443744 1 0.28574896 1 0.21431823 1 0.35716718 0.44067106
		 1 0.31698582 1 0 0.42858538 0 0.5 0 0.57141459 0 0.64283282 0.17515898 1 0.087579489
		 1 0 0.71425104 0 0.78568178 0 0.85711253 0 0.92855626 1 0.71425104 1 0.57141459 1
		 0.5 1 0.64283282 0.68301415 1 0.55932891 1 1 0.85711253 1 0.78568178 0.82484102 1
		 1 0.92855626;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.061011638 -0.25115639 -5.0012079e-09 -0.025029035 -0.25115639 0.019627785
		 0.043954432 -0.25115639 0.035395309 0.039739385 -0.29975742 -2.7375948e-09 0.030694589 -0.29975742 0.018768808
		 0.037335321 -0.29975742 0.010411842 0.028088411 -0.30777451 -1.4977966e-09 0.026850777 -0.30777451 0.005360106
		 0.02343207 -0.30777451 0.0096623451 0.05441026 -0.27730739 -4.2987454e-09 0.039839529 -0.27730739 0.030235639
		 -0.0058847615 -0.29975742 0.01040788 0.010387705 -0.29975742 0.023393456 0.02105489 -0.29975742 0.023395749
		 0.01846947 -0.30777451 0.012044334 0.012977911 -0.30777451 0.012043153 0.00075141789 -0.29975742 0.018763702
		 0.0080170669 -0.30777451 0.0096597159 0.0046007046 -0.30777451 0.0053580669 0.0056585278 -0.25115639 0.044116739
		 0.0071261241 -0.27730739 0.037685722 -0.019088028 -0.27730739 0.016766589 0.05441026 -0.19803871 -4.2987454e-09
		 -0.019088028 -0.19803871 0.016766589 0.039839529 -0.19803871 0.030235639 0.061011638 -0.2241897 -5.0012079e-09
		 0.043954432 -0.2241897 0.035395309 0.0071261241 -0.19803871 0.037685722 0.0056585278 -0.2241897 0.044116739
		 -0.025029035 -0.2241897 0.019627785 0.039739385 -0.17558865 -2.7375948e-09 0.030694589 -0.17558865 0.018768808
		 0.037335321 -0.17558865 0.010411842 0.028088411 -0.16757157 -1.4977966e-09 0.026850777 -0.16757157 0.005360106
		 0.02343207 -0.16757157 0.0096623451 0.010387705 -0.17558865 0.023393456 0.02105489 -0.17558865 0.023395749
		 0.01846947 -0.16757157 0.012044334 0.012977911 -0.16757157 0.012043153 -0.0058847615 -0.17558865 0.01040788
		 0.00075141789 -0.17558865 0.018763702 0.0080170669 -0.16757157 0.0096597159 0.0046007046 -0.16757157 0.0053580669
		 0.0056585181 -0.25115639 -0.044116735 0.010387699 -0.29975742 -0.023393454 -0.0058847638 -0.29975742 -0.010407876
		 -0.008286926 -0.29975742 2.3729594e-09 0.0033640494 -0.30777451 1.1331611e-09 0.0046007033 -0.30777451 -0.0053580645
		 0.00075141393 -0.29975742 -0.018763699 0.008017065 -0.30777451 -0.009659715 0.012977908 -0.30777451 -0.012043153
		 -0.025029039 -0.25115639 -0.019627778 -0.019088032 -0.27730739 -0.016766584 0.0071261162 -0.27730739 -0.037685718
		 0.030694583 -0.29975742 -0.018768812 0.021054884 -0.29975742 -0.023395749 0.018469468 -0.30777451 -0.012044335
		 0.023432069 -0.30777451 -0.0096623469 0.015726231 -0.3105793 -1.8231773e-10 0.037335321 -0.29975742 -0.010411846
		 0.026850777 -0.30777451 -0.0053601088 0.043954425 -0.25115639 -0.035395317 0.039839521 -0.27730739 -0.030235644
		 0.0071261162 -0.19803871 -0.037685718 -0.019088032 -0.19803871 -0.016766584 -0.025029039 -0.2241897 -0.019627778
		 0.0056585181 -0.2241897 -0.044116735 -0.0058847638 -0.17558865 -0.010407876 -0.008286926 -0.17558865 2.3729594e-09
		 0.0033640494 -0.16757157 1.1331611e-09 0.0046007033 -0.16757157 -0.0053580645 0.010387699 -0.17558865 -0.023393454
		 0.00075141393 -0.17558865 -0.018763699 0.008017065 -0.16757157 -0.009659715 0.012977908 -0.16757157 -0.012043153
		 0.039839521 -0.19803871 -0.030235644 0.043954425 -0.2241897 -0.035395317 0.030694583 -0.17558865 -0.018768812
		 0.021054884 -0.17558865 -0.023395749 0.018469468 -0.16757157 -0.012044335 0.023432069 -0.16757157 -0.0096623469
		 0.015726231 -0.16476677 -1.823177e-10 0.037335321 -0.17558865 -0.010411846 0.026850777 -0.16757157 -0.0053601088;
	setAttr -s 175 ".ed";
	setAttr ".ed[0:165]"  83 33 1 33 85 1 85 83 1 83 43 1 43 42 1 42 83 1 19 1 1
		 1 21 1 21 20 1 20 19 1 9 0 1 0 2 1 2 10 1 10 9 1 5 4 1 4 8 1 8 7 1 7 5 1 6 3 1 3 5 1
		 7 6 1 60 6 1 7 60 1 8 60 1 3 9 1 10 4 1 11 18 1 18 17 1 17 16 1 16 11 1 14 13 1 13 12 1
		 12 15 1 15 14 1 4 13 1 14 8 1 14 60 1 15 60 1 12 16 1 17 15 1 17 60 1 18 60 1 2 19 1
		 20 10 1 20 12 1 21 11 1 27 23 1 23 29 1 29 28 1 28 27 1 25 22 1 22 24 1 24 26 1 26 25 1
		 0 25 1 26 2 1 24 27 1 28 26 1 28 19 1 29 1 1 83 35 1 35 34 1 34 83 1 22 30 1 30 32 1
		 32 31 1 31 24 1 34 33 1 30 33 1 34 32 1 35 31 1 83 39 1 39 38 1 38 83 1 36 27 1 31 37 1
		 37 36 1 38 35 1 38 37 1 39 36 1 40 23 1 36 41 1 41 40 1 42 39 1 42 41 1 43 40 1 9 64 1
		 64 63 1 63 0 1 53 44 1 44 55 1 55 54 1 54 53 1 51 50 1 50 45 1 45 52 1 52 51 1 48 47 1
		 47 46 1 46 49 1 49 48 1 11 47 1 48 18 1 48 60 1 49 60 1 46 50 1 51 49 1 51 60 1 52 60 1
		 1 53 1 54 21 1 54 46 1 55 45 1 6 62 1 62 61 1 61 3 1 58 57 1 57 56 1 56 59 1 59 58 1
		 45 57 1 58 52 1 58 60 1 59 60 1 56 61 1 62 59 1 62 60 1 44 63 1 64 55 1 64 56 1 83 76 1
		 76 75 1 75 83 1 65 68 1 68 67 1 67 66 1 66 65 1 23 66 1 67 29 1 67 53 1 68 44 1 83 72 1
		 72 71 1 71 83 1 69 66 1 40 70 1 70 69 1 71 43 1 71 70 1 72 69 1 73 65 1 69 74 1 74 73 1
		 75 72 1 75 74 1 76 73 1 25 78 1 78 77 1 77 22 1 65 77 1 78 68 1 78 63 1 83 82 1 82 81 1
		 81 83 1 79 77 1;
	setAttr ".ed[166:174]" 73 80 1 80 79 1 81 76 1 81 80 1 82 79 1 79 84 1 84 30 1
		 85 82 1 85 84 1;
	setAttr -s 91 -ch 350 ".fc[0:90]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 83 33 85
		f 3 3 4 5
		mu 0 3 86 43 42
		f 4 6 7 8 9
		mu 0 4 19 1 21 20
		f 4 10 11 12 13
		mu 0 4 9 0 2 10
		f 4 14 15 16 17
		mu 0 4 5 4 8 7
		f 4 18 19 -18 20
		mu 0 4 6 3 5 7
		f 3 21 -21 22
		mu 0 3 60 6 7
		f 3 23 -23 -17
		mu 0 3 8 87 7
		f 5 24 -14 25 -15 -20
		mu 0 5 3 9 10 4 5
		f 4 26 27 28 29
		mu 0 4 11 18 17 16
		f 4 30 31 32 33
		mu 0 4 14 13 12 15
		f 4 -16 34 -31 35
		mu 0 4 8 4 13 14
		f 3 -24 -36 36
		mu 0 3 88 8 14
		f 3 -37 -34 37
		mu 0 3 89 14 15
		f 4 -33 38 -29 39
		mu 0 4 15 12 16 17
		f 3 -38 -40 40
		mu 0 3 90 15 17
		f 3 41 -41 -28
		mu 0 3 18 91 17
		f 4 42 -10 43 -13
		mu 0 4 2 19 20 10
		f 5 44 -32 -35 -26 -44
		mu 0 5 20 12 13 4 10
		f 5 45 -30 -39 -45 -9
		mu 0 5 21 11 16 12 20
		f 4 46 47 48 49
		mu 0 4 27 23 29 28
		f 4 50 51 52 53
		mu 0 4 25 22 24 26
		f 4 54 -54 55 -12
		mu 0 4 0 25 26 2
		f 4 56 -50 57 -53
		mu 0 4 24 27 28 26
		f 4 58 -43 -56 -58
		mu 0 4 28 19 2 26
		f 4 59 -7 -59 -49
		mu 0 4 29 1 19 28
		f 3 60 61 62
		mu 0 3 92 35 34
		f 5 63 64 65 66 -52
		mu 0 5 22 30 32 31 24
		f 3 -1 -63 67
		mu 0 3 93 94 34
		f 4 68 -68 69 -65
		mu 0 4 30 93 34 32
		f 4 70 -66 -70 -62
		mu 0 4 35 31 32 34
		f 3 71 72 73
		mu 0 3 95 39 38
		f 5 74 -57 -67 75 76
		mu 0 5 36 27 24 31 37
		f 3 -74 77 -61
		mu 0 3 96 38 35
		f 4 78 -76 -71 -78
		mu 0 4 38 37 31 35
		f 4 79 -77 -79 -73
		mu 0 4 39 36 37 38
		f 5 80 -47 -75 81 82
		mu 0 5 40 23 27 36 41
		f 3 -6 83 -72
		mu 0 3 97 42 39
		f 4 84 -82 -80 -84
		mu 0 4 42 41 36 39
		f 4 85 -83 -85 -5
		mu 0 4 43 40 41 42
		f 4 -11 86 87 88
		mu 0 4 98 99 64 63
		f 4 89 90 91 92
		mu 0 4 53 44 55 54
		f 4 93 94 95 96
		mu 0 4 51 50 45 52
		f 4 97 98 99 100
		mu 0 4 48 47 46 49
		f 4 -27 101 -98 102
		mu 0 4 18 11 47 48
		f 3 -42 -103 103
		mu 0 3 100 18 48
		f 3 -104 -101 104
		mu 0 3 101 48 49
		f 4 -100 105 -94 106
		mu 0 4 49 46 50 51
		f 3 -105 -107 107
		mu 0 3 102 49 51
		f 3 -108 -97 108
		mu 0 3 103 51 52
		f 4 -8 109 -93 110
		mu 0 4 21 1 53 54
		f 5 -46 -111 111 -99 -102
		mu 0 5 11 21 54 46 47
		f 5 112 -95 -106 -112 -92
		mu 0 5 55 45 50 46 54
		f 4 -19 113 114 115
		mu 0 4 104 105 62 61
		f 4 116 117 118 119
		mu 0 4 58 57 56 59
		f 4 -96 120 -117 121
		mu 0 4 52 45 57 58
		f 3 -109 -122 122
		mu 0 3 106 52 58
		f 3 -123 -120 123
		mu 0 3 107 58 59
		f 4 -119 124 -115 125
		mu 0 4 59 56 61 62
		f 3 -124 -126 126
		mu 0 3 108 59 62
		f 3 -22 -127 -114
		mu 0 3 105 109 62
		f 4 -91 127 -88 128
		mu 0 4 55 44 63 64
		f 5 -118 -121 -113 -129 129
		mu 0 5 56 57 45 55 64
		f 5 -25 -116 -125 -130 -87
		mu 0 5 99 104 61 56 64
		f 3 130 131 132
		mu 0 3 110 76 75
		f 4 133 134 135 136
		mu 0 4 65 68 67 66
		f 4 -48 137 -136 138
		mu 0 4 29 23 66 67
		f 4 -110 -60 -139 139
		mu 0 4 53 1 29 67
		f 4 140 -90 -140 -135
		mu 0 4 68 44 53 67
		f 3 141 142 143
		mu 0 3 111 72 71
		f 5 144 -138 -81 145 146
		mu 0 5 69 66 23 40 70
		f 3 -144 147 -4
		mu 0 3 112 71 43
		f 4 148 -146 -86 -148
		mu 0 4 71 70 40 43
		f 4 149 -147 -149 -143
		mu 0 4 72 69 70 71
		f 5 150 -137 -145 151 152
		mu 0 5 73 65 66 69 74
		f 3 -133 153 -142
		mu 0 3 113 75 72
		f 4 154 -152 -150 -154
		mu 0 4 75 74 69 72
		f 4 155 -153 -155 -132
		mu 0 4 76 73 74 75
		f 4 -51 156 157 158
		mu 0 4 114 115 78 77
		f 4 -134 159 -158 160
		mu 0 4 68 65 77 78
		f 4 -128 -141 -161 161
		mu 0 4 63 44 68 78
		f 4 -55 -89 -162 -157
		mu 0 4 115 98 63 78
		f 3 162 163 164
		mu 0 3 116 82 81
		f 5 165 -160 -151 166 167
		mu 0 5 79 77 65 73 80
		f 3 -165 168 -131
		mu 0 3 117 81 76
		f 4 169 -167 -156 -169
		mu 0 4 81 80 73 76
		f 4 170 -168 -170 -164
		mu 0 4 82 79 80 81
		f 5 -64 -159 -166 171 172
		mu 0 5 118 114 77 79 84
		f 3 -3 173 -163
		mu 0 3 119 85 82
		f 4 174 -172 -171 -174
		mu 0 4 85 84 79 82
		f 4 -69 -173 -175 -2
		mu 0 4 33 118 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "weigthShapeOrig" -p "weigth";
	rename -uid "DAED7B00-4491-14CD-7AFA-389E3EE775B5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "arm";
	rename -uid "57322272-40EF-599B-F3D2-2685E11E293A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 81 ".uvst[0].uvsp[0:80]" -type "float2" 0 0 1 1 1 0.5 0 0.5
		 0.5 0 0.5 0.5 0.5 0.25 0 0.25 0.25 0 0.25 0.25 0.25 0.125 0 0.125 0.125 0 0.125 0.125
		 0.125 0.25 0.5 0.125 0.375 0 0.375 0.125 0.375 0.25 0.25 0.5 0 0.375 0.25 0.375 0.125
		 0.375 0.125 0.5 0.5 0.375 0.375 0.375 0.375 0.5 1 0.25 0.75 0 0.75 0.25 0.75 0.125
		 0.625 0 0.625 0.125 0.625 0.25 1 0.125 0.875 1 0.875 0.125 0.875 0.25 0.75 0.5 0.75
		 0.375 0.625 0.375 0.625 0.5 1 0.375 0.875 0.375 0.875 0.5 0 0.75 0.5 0.75 0.25 0.75
		 0 0.625 0.25 0.625 0.125 0.625 0.125 0.75 0.5 0.625 0.375 0.625 0.375 0.75 0 0.875
		 0.25 0.875 0.125 0.875 0.5 0.875 0.375 0.875 1 0.75 0.75 0.75 0.75 0.625 0.625 0.625
		 0.625 0.75 1 0.625 0.875 0.625 0.875 0.75 0.75 0.875 0.625 0.875 1 0.875 0.875 0.875
		 0.875 0 1 0 0.5 1 0.375 1 0.25 1 0.125 1 0 1 0.75 1 0.625 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[6]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[7]" -type "float3" 3.7266873e-06 0 -1.8626451e-09 ;
	setAttr ".pt[9]" -type "float3" 3.7266873e-06 0 -1.8626451e-09 ;
	setAttr ".pt[10]" -type "float3" 3.7238933e-06 0 -1.1641532e-09 ;
	setAttr ".pt[11]" -type "float3" 3.7238933e-06 0 -1.1641532e-09 ;
	setAttr ".pt[13]" -type "float3" 3.7238933e-06 0 -1.1641532e-09 ;
	setAttr ".pt[14]" -type "float3" 3.7266873e-06 0 -1.8626451e-09 ;
	setAttr ".pt[15]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[17]" -type "float3" 3.7238933e-06 0 -1.1641532e-09 ;
	setAttr ".pt[18]" -type "float3" 3.7266873e-06 0 -1.8626451e-09 ;
	setAttr ".pt[27]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[29]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[30]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[32]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[33]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[34]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[36]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".pt[37]" -type "float3" 2.3283064e-09 0 3.4924597e-09 ;
	setAttr ".pt[47]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[51]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[54]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[56]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[57]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr ".pt[59]" -type "float3" 3.7255368e-06 0 0 ;
	setAttr -s 72 ".vt[0:71]"  0.028703667 -0.23122843 -1.5632668e-09 0.028703667 0.51856649 -1.5632668e-09
		 0.0021545757 0.51856649 1.2618631e-09 0.0021545757 -0.23122843 1.2618631e-09 0.028703667 0.14366904 -1.5632668e-09
		 0.0021545757 0.14366904 1.2618631e-09 0.015429122 0.14366904 0.013274546 0.015429122 -0.23122843 0.013274546
		 0.028703667 -0.043779694 -1.5632668e-09 0.015429122 -0.043779694 0.013274546 0.024815643 -0.043779694 0.0093865199
		 0.024815643 -0.23122843 0.0093865199 0.028703667 -0.13750406 -1.5632668e-09 0.024815643 -0.13750406 0.0093865199
		 0.015429122 -0.13750406 0.013274546 0.024815643 0.14366904 0.0093865199 0.028703667 0.049944676 -1.5632668e-09
		 0.024815643 0.049944676 0.0093865199 0.015429122 0.049944676 0.013274546 0.0021545757 -0.043779694 1.2618631e-09
		 0.0060426011 -0.23122843 0.0093865218 0.0060426011 -0.043779694 0.0093865218 0.0060426011 -0.13750406 0.0093865218
		 0.0021545757 -0.13750406 1.2618631e-09 0.0060426011 0.14366904 0.0093865218 0.0060426011 0.049944676 0.0093865218
		 0.0021545757 0.049944676 1.2618631e-09 0.015429122 0.51856649 0.013274546 0.028703667 0.33111778 -1.5632668e-09
		 0.015429122 0.33111778 0.013274546 0.024815643 0.33111778 0.0093865199 0.028703667 0.23739341 -1.5632668e-09
		 0.024815643 0.23739341 0.0093865199 0.015429122 0.23739341 0.013274546 0.024815643 0.51856649 0.0093865199
		 0.028703667 0.42484215 -1.5632668e-09 0.024815643 0.42484215 0.0093865199 0.015429122 0.42484215 0.013274546
		 0.0021545757 0.33111778 1.2618631e-09 0.0060426011 0.33111778 0.0093865218 0.0060426011 0.23739341 0.0093865218
		 0.0021545757 0.23739341 1.2618631e-09 0.0060426011 0.51856649 0.0093865218 0.0060426011 0.42484215 0.0093865218
		 0.0021545757 0.42484215 1.2618631e-09 0.01542912 -0.23122843 -0.013274546 0.01542912 0.14366904 -0.013274546
		 0.01542912 -0.043779694 -0.013274546 0.0060425992 -0.23122843 -0.0093865199 0.0060425992 -0.043779694 -0.0093865199
		 0.0060425992 -0.13750406 -0.0093865199 0.01542912 -0.13750406 -0.013274546 0.0060425992 0.14366904 -0.0093865199
		 0.0060425992 0.049944676 -0.0093865199 0.01542912 0.049944676 -0.013274546 0.024815641 -0.23122843 -0.0093865227
		 0.024815641 -0.043779694 -0.0093865227 0.024815641 -0.13750406 -0.0093865227 0.024815641 0.14366904 -0.0093865227
		 0.024815641 0.049944676 -0.0093865227 0.01542912 0.51856649 -0.013274546 0.01542912 0.33111778 -0.013274546
		 0.0060425992 0.33111778 -0.0093865199 0.0060425992 0.23739341 -0.0093865199 0.01542912 0.23739341 -0.013274546
		 0.0060425992 0.51856649 -0.0093865199 0.0060425992 0.42484215 -0.0093865199 0.01542912 0.42484215 -0.013274546
		 0.024815641 0.33111778 -0.0093865227 0.024815641 0.23739341 -0.0093865227 0.024815641 0.51856649 -0.0093865227
		 0.024815641 0.42484215 -0.0093865227;
	setAttr -s 136 ".ed[0:135]"  70 1 0 1 35 1 35 71 1 71 70 1 42 2 0 2 44 1
		 44 43 1 43 42 1 24 5 1 5 26 1 26 25 1 25 24 1 15 6 1 6 18 1 18 17 1 17 15 1 10 9 1
		 9 14 1 14 13 1 13 10 1 12 8 1 8 10 1 13 12 1 0 12 1 13 11 1 11 0 0 14 7 1 7 11 0
		 16 4 1 4 15 1 17 16 1 8 16 1 17 10 1 18 9 1 19 23 1 23 22 1 22 21 1 21 19 1 9 21 1
		 22 14 1 20 7 0 22 20 1 23 3 1 3 20 0 6 24 1 25 18 1 25 21 1 26 19 1 34 27 0 27 37 1
		 37 36 1 36 34 1 30 29 1 29 33 1 33 32 1 32 30 1 31 28 1 28 30 1 32 31 1 4 31 1 32 15 1
		 33 6 1 1 34 0 36 35 1 28 35 1 36 30 1 37 29 1 38 41 1 41 40 1 40 39 1 39 38 1 29 39 1
		 40 33 1 40 24 1 41 5 1 27 42 0 43 37 1 43 39 1 44 38 1 16 59 1 59 58 1 58 4 1 52 46 1
		 46 54 1 54 53 1 53 52 1 50 49 1 49 47 1 47 51 1 51 50 1 19 49 1 50 23 1 48 3 0 50 48 1
		 45 48 0 51 45 1 5 52 1 53 26 1 53 49 1 54 47 1 12 57 1 57 56 1 56 8 1 47 56 1 57 51 1
		 55 45 0 57 55 1 0 55 0 46 58 1 59 54 1 59 56 1 65 60 0 60 67 1 67 66 1 66 65 1 61 64 1
		 64 63 1 63 62 1 62 61 1 38 62 1 63 41 1 63 52 1 64 46 1 2 65 0 66 44 1 66 62 1 67 61 1
		 31 69 1 69 68 1 68 28 1 61 68 1 69 64 1 69 58 1 60 70 0 71 67 1 71 68 1;
	setAttr -s 64 -ch 256 ".fc[0:63]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 70 1 35 71
		f 4 4 5 6 7
		mu 0 4 42 2 44 43
		f 4 8 9 10 11
		mu 0 4 24 5 26 25
		f 4 12 13 14 15
		mu 0 4 15 6 18 17
		f 4 16 17 18 19
		mu 0 4 10 9 14 13
		f 4 20 21 -20 22
		mu 0 4 12 8 10 13
		f 4 23 -23 24 25
		mu 0 4 0 12 13 11
		f 4 26 27 -25 -19
		mu 0 4 14 7 11 13
		f 4 28 29 -16 30
		mu 0 4 16 4 15 17
		f 4 31 -31 32 -22
		mu 0 4 8 16 17 10
		f 4 33 -17 -33 -15
		mu 0 4 18 9 10 17
		f 4 34 35 36 37
		mu 0 4 19 23 22 21
		f 4 -18 38 -37 39
		mu 0 4 14 9 21 22
		f 4 40 -27 -40 41
		mu 0 4 20 7 14 22
		f 4 42 43 -42 -36
		mu 0 4 23 3 20 22
		f 4 44 -12 45 -14
		mu 0 4 6 24 25 18
		f 4 46 -39 -34 -46
		mu 0 4 25 21 9 18
		f 4 47 -38 -47 -11
		mu 0 4 26 19 21 25
		f 4 48 49 50 51
		mu 0 4 34 27 37 36
		f 4 52 53 54 55
		mu 0 4 30 29 33 32
		f 4 56 57 -56 58
		mu 0 4 31 28 30 32
		f 4 59 -59 60 -30
		mu 0 4 4 31 32 15
		f 4 61 -13 -61 -55
		mu 0 4 33 6 15 32
		f 4 -2 62 -52 63
		mu 0 4 72 73 34 36
		f 4 64 -64 65 -58
		mu 0 4 28 72 36 30
		f 4 66 -53 -66 -51
		mu 0 4 37 29 30 36
		f 4 67 68 69 70
		mu 0 4 38 41 40 39
		f 4 -54 71 -70 72
		mu 0 4 33 29 39 40
		f 4 -45 -62 -73 73
		mu 0 4 24 6 33 40
		f 4 74 -9 -74 -69
		mu 0 4 41 5 24 40
		f 4 75 -8 76 -50
		mu 0 4 27 42 43 37
		f 4 77 -72 -67 -77
		mu 0 4 43 39 29 37
		f 4 78 -71 -78 -7
		mu 0 4 44 38 39 43
		f 4 -29 79 80 81
		mu 0 4 74 75 59 58
		f 4 82 83 84 85
		mu 0 4 52 46 54 53
		f 4 86 87 88 89
		mu 0 4 50 49 47 51
		f 4 -35 90 -87 91
		mu 0 4 23 19 49 50
		f 4 92 -43 -92 93
		mu 0 4 48 3 23 50
		f 4 94 -94 -90 95
		mu 0 4 45 48 50 51
		f 4 -10 96 -86 97
		mu 0 4 26 5 52 53
		f 4 -48 -98 98 -91
		mu 0 4 19 26 53 49
		f 4 99 -88 -99 -85
		mu 0 4 54 47 49 53
		f 4 -21 100 101 102
		mu 0 4 76 77 57 56
		f 4 -89 103 -102 104
		mu 0 4 51 47 56 57
		f 4 105 -96 -105 106
		mu 0 4 55 45 51 57
		f 4 -24 107 -107 -101
		mu 0 4 77 78 55 57
		f 4 -84 108 -81 109
		mu 0 4 54 46 58 59
		f 4 -104 -100 -110 110
		mu 0 4 56 47 54 59
		f 4 -32 -103 -111 -80
		mu 0 4 75 76 56 59
		f 4 111 112 113 114
		mu 0 4 65 60 67 66
		f 4 115 116 117 118
		mu 0 4 61 64 63 62
		f 4 -68 119 -118 120
		mu 0 4 41 38 62 63
		f 4 -97 -75 -121 121
		mu 0 4 52 5 41 63
		f 4 122 -83 -122 -117
		mu 0 4 64 46 52 63
		f 4 123 -115 124 -6
		mu 0 4 2 65 66 44
		f 4 125 -120 -79 -125
		mu 0 4 66 62 38 44
		f 4 126 -119 -126 -114
		mu 0 4 67 61 62 66
		f 4 -57 127 128 129
		mu 0 4 79 80 69 68
		f 4 -116 130 -129 131
		mu 0 4 64 61 68 69
		f 4 -109 -123 -132 132
		mu 0 4 58 46 64 69
		f 4 -60 -82 -133 -128
		mu 0 4 80 74 58 69
		f 4 133 -4 134 -113
		mu 0 4 60 70 71 67
		f 4 135 -131 -127 -135
		mu 0 4 71 68 61 67
		f 4 -65 -130 -136 -3
		mu 0 4 35 79 68 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "armShapeOrig" -p "arm";
	rename -uid "C120E267-4BCE-4C02-8925-C28E9E864513";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8837ED00-0000-18B6-61B9-3FCE000002A9";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8837ED00-0000-18B6-61B9-3FCE000002AA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8837ED00-0000-18B6-61B9-3FCE000002AB";
createNode displayLayerManager -n "layerManager";
	rename -uid "8837ED00-0000-18B6-61B9-3FCE000002AC";
createNode displayLayer -n "defaultLayer";
	rename -uid "5B384A81-46CC-AC3F-B7DC-B6AB5B878EB4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8837ED00-0000-18B6-61B9-3FCE000002AE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2E24C218-4B04-FC4B-60F5-87B2B4179275";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "0B96C6C3-4748-1B7F-6A5A-D780EF39ECC7";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -766.66663620207169 -85.714282308306167 ;
	setAttr ".tgi[0].vh" -type "double2" 776.19044534743921 85.714282308306167 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -101.42857360839844;
	setAttr ".tgi[0].ni[0].y" -31.428571701049805;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -101.42857360839844;
	setAttr ".tgi[0].ni[1].y" 98.571426391601562;
	setAttr ".tgi[0].ni[1].nvs" 18304;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A342F7B1-4210-3681-69A0-2795D6DDC651";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1252\n            -height 738\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1056\n            -height 630\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
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
		+ "\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1252\\n    -height 738\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1252\\n    -height 738\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F99F02B0-44A7-A8FA-D375-46B6BBB5E107";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 47 -ast 1 -aet 47 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "736FD567-4234-718B-22C5-3C95594F84D4";
createNode dagPose -n "bindPose1";
	rename -uid "5AD2998E-4C41-6F74-EF41-74824BFB5D3E";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -7.0064219322049651e-10 1.7312929840177564e-07 1.3329418196731023e-09 0 0.014012903071776273
		 0.51779583348147928 -0.0022462109052627799 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 -0.64884303125526921 0 0.76092228301678333 1
		 1 1 no;
	setAttr ".bp" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "A8F37A74-4ADD-EA43-DA14-949831689799";
	setAttr ".ics" -type "componentList" 8 "e[18]" "e[22]" "e[35]" "e[39]" "e[89]" "e[91]" "e[100]" "e[104]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "53C965BF-43BC-87E2-ECFA-C598634AA8BE";
	setAttr ".ics" -type "componentList" 6 "e[16]" "e[18]" "e[30:31]" "e[77]" "e[79]" "e[87:88]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "D6CC6721-4ED0-871D-67A6-8E9728E786CD";
	setAttr ".ics" -type "componentList" 8 "e[10]" "e[14]" "e[21]" "e[27]" "e[61]" "e[66]" "e[71]" "e[77]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "C938FD55-4248-1F7E-E793-70B6F5F4866B";
	setAttr ".dc" -type "componentList" 7 "e[8]" "e[10]" "e[15]" "e[19]" "e[52:53]" "e[57]" "e[61]";
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "F31D3BD9-4934-9846-9EE1-65824A4E6E29";
	setAttr ".ics" -type "componentList" 8 "e[23]" "e[27]" "e[37]" "e[41]" "e[60]" "e[64]" "e[71]" "e[75]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "52F10322-45FB-FC28-7379-D8A7FE9381B4";
	setAttr ".ics" -type "componentList" 5 "e[21]" "e[23]" "e[32:33]" "e[51:52]" "e[58:59]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "E47C96FD-49B8-D2CE-87D2-2592197CFB03";
	setAttr ".dc" -type "componentList" 8 "e[2]" "e[6]" "e[19]" "e[23]" "e[27]" "e[39]" "e[42]" "e[46]";
createNode polyCylProj -n "polyCylProj1";
	rename -uid "1BD338DA-48ED-C955-4D23-0B995061F0E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.015430985018610954 0.14366903156042099 3.7252902984619141e-09 ;
	setAttr ".ps" -type "double2" 180 0.74979491531848907 ;
	setAttr ".r" 0.026552818715572357;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "4FAF7741-490E-92D1-2B2C-F19B44AF3714";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk[0:35]" -type "float2" -0.37507004 -0.5 -0.25005424
		 -0.5 -0.25005424 -0.4375 -0.25005424 -0.25 -0.25005424 0 -0.37507004 -0.25 0.12496161
		 -0.4375 0.12496161 -0.5 0.24994582 -0.5 0.24994582 -0.4375 0.24994582 -0.25 0.24994582
		 0 0.12496161 0 0.12496161 -0.25 -0.12503839 -0.4375 -0.12503839 -0.5 -3.1888485e-05
		 -0.5 -3.1888485e-05 -0.4375 -3.1888485e-05 -0.25 -7.6562166e-05 0 -0.12507004 0 -0.12503839
		 -0.25 0.37492999 -0.4375 0.37492999 -0.5 0.49992341 -0.5 0.49992341 -0.4375 0.49992341
		 -0.25 0.49992341 0 0.37492999 0 0.37492999 -0.25 -0.50007653 -0.5 -0.37507004 -0.4375
		 -0.37507004 0 -0.50007653 0 -0.50007653 -0.25 -0.50007653 -0.4375;
createNode geomBind -n "geomBind1";
	rename -uid "824748EC-4729-2ACB-AC7D-0496E02BD830";
	setAttr ".mi" 3;
createNode skinCluster -n "skinCluster1";
	rename -uid "E1E01B09-44B4-511B-82D0-26B2562C36F1";
	setAttr -s 32 ".wl";
	setAttr ".wl[0:31].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 1
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 0.99999999999999989
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 0.15800561253743509 0 -0.98743821396919318 0 0 1 0 0
		 0.98743821396919318 0 0.15800561253743509 0 3.8771512070883045e-06 -0.51779583348147928 0.014191789911692496 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
createNode polyDelEdge -n "polyDelEdge7";
	rename -uid "F1ABE3F5-4E91-D186-DCB2-F7924CCDC24F";
	setAttr ".ics" -type "componentList" 13 "e[2]" "e[5]" "e[62]" "e[69]" "e[73]" "e[78]" "e[84]" "e[132]" "e[148]" "e[154]" "e[164]" "e[169]" "e[174]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge8";
	rename -uid "762A3CFC-478C-E11D-694B-B4A8E7EAC140";
	setAttr ".ics" -type "componentList" 1 "e[129]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge9";
	rename -uid "7A222304-43EF-7DE8-77FF-8B8D4066DDF2";
	setAttr ".ics" -type "componentList" 14 "e[15]" "e[20]" "e[26]" "e[28]" "e[34]" "e[38]" "e[80]" "e[84]" "e[90]" "e[94]" "e[101]" "e[103]" "e[109]" "e[113]";
	setAttr ".cv" yes;
createNode polyCylProj -n "polyCylProj2";
	rename -uid "B76C39E5-4D74-1725-BF6A-F992E6F8B531";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0.37945854706471199 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.39744985103607178 -0.23767303675413132 1.862645149230957e-09 ;
	setAttr ".ps" -type "double2" 180 0.14581252634525299 ;
	setAttr ".r" 0.088233474642038345;
createNode polyCylProj -n "polyCylProj3";
	rename -uid "81752FF3-4AA7-792B-4415-A3980F0C471E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0.37945854706471199 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.39744985103607178 -0.23767303675413132 1.862645149230957e-09 ;
	setAttr ".ps" -type "double2" 170.08582348952132 0.17844510628451216 ;
	setAttr ".r" 0.1063545561668154;
createNode polyCylProj -n "polyCylProj4";
	rename -uid "6B399AE4-4B9C-E83E-45FD-FDB26066F610";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "f[2:3]" "f[6]" "f[11:19]" "f[21]" "f[24]" "f[26]" "f[28:29]" "f[34:36]" "f[41:43]" "f[45:48]" "f[50]" "f[52]" "f[54:57]" "f[59]" "f[61]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0.37945854706471199 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.39744985103607178 -0.23767303675413132 1.862645149230957e-09 ;
	setAttr ".ps" -type "double2" 180 0.1241687685251236 ;
	setAttr ".r" 0.088233474642038345;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "A372C1D2-4133-B15A-68F1-01AA0478E6F9";
	setAttr ".uopa" yes;
	setAttr -s 49 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[5]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[6]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[7]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[8]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[9]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[10]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[11]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[21]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[22]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[23]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[24]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[25]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[26]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[27]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[28]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[34]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[35]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[36]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[37]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[38]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[46]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[47]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[48]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[51]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[58]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[59]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[60]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[61]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[62]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[63]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[68]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[69]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[70]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[71]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[72]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[73]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[74]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[75]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[76]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[77]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[78]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[79]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[80]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[81]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[82]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[83]" -type "float2" 0 -1.0906029 ;
	setAttr ".uvtk[84]" -type "float2" 0 -1.0906029 ;
createNode polyPlanarProj -n "polyPlanarProj22";
	rename -uid "6EDB7643-4A46-8254-1C68-8CB73B069C74";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[4:5]" "f[7:10]" "f[30:33]" "f[37:40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0.37945854706471199 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.39638584852218628 -0.30516836047172546 9.3132257461547852e-10 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.045624136924743652 0.04678690992295742 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj23";
	rename -uid "3F96C95F-470A-2A90-95EE-0B9B49BED8C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[0:1]" "f[20]" "f[22:23]" "f[25]" "f[27]" "f[44]" "f[49]" "f[51]" "f[53]" "f[58]" "f[60]" "f[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0.37945854706471199 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.39638584852218628 -0.17017771303653717 9.3132257461547852e-10 ;
	setAttr ".ic" -type "double2" 1.5526845256532704 0.5 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.045624136924743652 0.04678690992295742 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode skinCluster -n "skinCluster2";
	rename -uid "E32CBAB6-4555-568F-82BC-E485396D6C21";
	setAttr -s 58 ".wl";
	setAttr ".wl[0:57].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 0.99999999999999989
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 1
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 0.15800561253743509 0 -0.98743821396919318 0 0 1 0 0
		 0.98743821396919318 0 0.15800561253743509 0 3.8771512070883045e-06 -0.51779583348147928 0.014191789911692496 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -0.00030942551544305141 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
createNode polyCube -n "polyCube1";
	rename -uid "CB8E0939-476C-66A9-DB11-63820EE01E21";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "911C006A-41CA-F829-228C-C0A2A999D0CD";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.0595647 0 ;
	setAttr ".rs" 42032;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33081384394584862 -1.0595646872756928 -0.24605988120681943 ;
	setAttr ".cbx" -type "double3" 0.33081384394584862 -1.0595646872756928 0.24605988120681943 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "0997C939-4860-CCEC-AA0A-4599D9D62A00";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.037924107 -0.79832405 0.037924092
		 -0.037924107 -0.79832405 0.037924092 -0.037924107 -0.79832405 -0.037924092 0.037924107
		 -0.79832405 -0.037924092;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "6EAEA2D0-4823-2DBF-B5C3-3A8CBAE67DE1";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.0204716 0 ;
	setAttr ".rs" 33132;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.3057222021427235 -1.0204715780371374 -0.22739667676616226 ;
	setAttr ".cbx" -type "double3" 0.3057222021427235 -1.0204715780371374 0.22739667676616226 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "4BB55352-4D52-9EF3-50F1-9B99C1B07F3D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.039508067 -0.33263502 0.039508056
		 -0.039508067 -0.33263502 0.039508056 -0.039508067 -0.33263502 -0.039508056 0.039508067
		 -0.33263502 -0.039508056;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "FD55D53F-42C3-1658-2D54-F8BBB0F8BC72";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.0041828 0 ;
	setAttr ".rs" 44359;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27958256614366761 -1.0041827591708481 -0.20795397251896622 ;
	setAttr ".cbx" -type "double3" 0.27958256614366761 -1.0041827591708481 0.20795397251896622 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "78FCC3C9-45E3-3A14-A3E5-7F991BD12FA2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 -0.76506054 0 0 -0.76506054
		 0 0 -0.76506054 0 0 -0.76506054 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "4DFE82EB-4FB7-EFE7-BEBC-14AE735DA11A";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.96671849 0 ;
	setAttr ".rs" 41827;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27958258586170925 -0.9667184973773405 -0.20795395785265441 ;
	setAttr ".cbx" -type "double3" 0.27958258586170925 -0.9667184973773405 0.20795395785265441 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "E0B69AC0-4107-0F75-F5F2-F6A4DA3D57AD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0.019754035 0 0.01975403 -0.019754035
		 0 0.01975403 -0.019754035 0 -0.01975403 0.019754035 0 -0.01975403;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "5EA2ACEF-4D07-15A0-F6CF-05967D09B58E";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.96671849 0 ;
	setAttr ".rs" 43253;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26651277772120213 -0.9667184973773405 -0.19823259839590049 ;
	setAttr ".cbx" -type "double3" 0.26651277772120213 -0.9667184973773405 0.19823259839590049 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "72ABB998-4596-399F-11D1-19BBD7AEB9EB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0 -9.31377506 0 0 -9.31377506
		 0 0 -9.31377506 0 0 -9.31377506 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "1C38E35E-4C5E-29C3-4B61-B793E68B803B";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.51063251 0 ;
	setAttr ".rs" 61617;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26651277772120213 -0.51063252648044466 -0.19823258372958866 ;
	setAttr ".cbx" -type "double3" 0.26651277772120213 -0.51063252648044466 0.19823258372958866 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "294706CD-4160-954C-E3EF-8586E64A38EA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[28:31]" -type "float3"  -0.027655648 0 -0.027655637
		 0.027655648 0 -0.027655637 0.027655648 0 0.027655637 -0.027655648 0 0.027655637;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "6C33004C-4E35-4248-B11D-B580ECC785AA";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.51063251 0 ;
	setAttr ".rs" 60596;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28481052883595376 -0.51063252648044466 -0.21184245176989583 ;
	setAttr ".cbx" -type "double3" 0.28481052883595376 -0.51063252648044466 0.21184245176989583 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "A6976959-4184-B5AE-BE22-EDA912534547";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[32:35]" -type "float3"  0.015803231 -0.69853354 0.01580322
		 -0.015803231 -0.69853354 0.01580322 -0.015803231 -0.69853354 -0.01580322 0.015803231
		 -0.69853354 -0.01580322;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "6BB2F132-4B61-7154-99B0-0C886BC12C34";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.47642609 0 ;
	setAttr ".rs" 38599;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27435470204158968 -0.47642608216571125 -0.20406536127123032 ;
	setAttr ".cbx" -type "double3" 0.27435470204158968 -0.47642608216571125 0.20406536127123032 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "5E802232-41EF-CA65-44F9-7586F4C04E78";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[36:39]" -type "float3"  0.011852423 0 0.011852414
		 -0.011852423 0 0.011852414 -0.011852423 0 -0.011852414 0.011852423 0 -0.011852414;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "A0D1193E-4412-4E45-3FDB-B581DF86E05D";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.47642609 0 ;
	setAttr ".rs" 42866;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26651281715728542 -0.47642608216571125 -0.19823253973065322 ;
	setAttr ".cbx" -type "double3" 0.26651281715728542 -0.47642608216571125 0.19823253973065322 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "7BCC7C45-49B7-D8FE-4B22-E6A9A2B137B6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[40:43]" -type "float3"  0 -0.29937151 0 0 -0.29937151
		 0 0 -0.29937151 0 0 -0.29937151 0;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "E3CE14CC-4163-4D81-443E-D0AD497BC6FC";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.46176615 0 ;
	setAttr ".rs" 35576;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26651281715728542 -0.46176615744491878 -0.19823252506434141 ;
	setAttr ".cbx" -type "double3" 0.26651281715728542 -0.46176615744491878 0.19823252506434141 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "9EA745C7-46E4-991A-327C-8D818551B7CF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  0.031606462 0 0.031606436
		 -0.031606462 0 0.031606436 -0.031606462 0 -0.031606436 0.031606462 0 -0.031606436;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "9A9BCEF9-498A-0D26-8D5D-3ABE9D828E94";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.46176615 0 ;
	setAttr ".rs" 48339;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24560110441443236 -0.46176615744491878 -0.18267835873332222 ;
	setAttr ".cbx" -type "double3" 0.24560110441443236 -0.46176615744491878 0.18267835873332222 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "BB8D7950-40C2-5117-49DC-57861CEEB0D8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[48:51]" -type "float3"  0 -0.29937151 0 0 -0.29937151
		 0 0 -0.29937151 0 0 -0.29937151 0;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "41EEC19D-4D87-6748-6EF1-8EBF4ADE3F59";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.44710624 0 ;
	setAttr ".rs" 52290;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24560112413247401 -0.44710623272412631 -0.18267834406701039 ;
	setAttr ".cbx" -type "double3" 0.24560112413247401 -0.44710623272412631 0.18267834406701039 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "207218CD-4EA3-FDC4-8FB8-E3B3AD7D448C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[52:55]" -type "float3"  0.049385101 -0.66527003 0.049385052
		 -0.049385101 -0.66527003 0.049385052 -0.049385101 -0.66527003 -0.049385052 0.049385101
		 -0.66527003 -0.049385052;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "C1970513-44D3-FC8F-AF2D-3FAFC13505C8";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.4145287 0 ;
	setAttr ".rs" 55633;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21292659392218535 -0.41452870006755782 -0.1583749747577492 ;
	setAttr ".cbx" -type "double3" 0.21292659392218535 -0.41452870006755782 0.1583749747577492 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "E69EFCDF-475C-D09C-5131-F5A892E11448";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[56:59]" -type "float3"  0 -15.7336359 0 0 -15.7336359
		 0 0 -15.7336359 0 0 -15.7336359 0;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "7D61565A-4DB6-1AD7-B2EF-AFB9CCE15749";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.35593125 0 ;
	setAttr ".rs" 49564;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21292659392218535 0.35593124319774239 -0.1583749747577492 ;
	setAttr ".cbx" -type "double3" 0.21292659392218535 0.35593124319774239 0.1583749747577492 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "86860435-40A0-4024-609E-AEBB240DC072";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[60:63]" -type "float3"  -0.053335898 -0.29937151 -0.053335853
		 0.053335898 -0.29937151 -0.053335853 0.053335898 -0.29937151 0.053335853 -0.053335898
		 -0.29937151 0.053335853;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "12E1024C-4BDC-2BC6-D3C7-6A8912EF97E0";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.37059107 0 ;
	setAttr ".rs" 59911;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24821510547861708 0.37059107451763706 -0.18462259835878703 ;
	setAttr ".cbx" -type "double3" 0.24821510547861708 0.37059107451763706 0.18462259835878703 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "1245DE28-4AB5-C062-A983-F4AFC776E461";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[64:67]" -type "float3"  -0.019754041 -0.29937148 -0.019754019
		 0.019754041 -0.29937148 -0.019754019 0.019754041 -0.29937148 0.019754019 -0.019754041
		 -0.29937148 0.019754019;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "9CF531F5-4350-407C-2827-F2B00CE16688";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.38525099 0 ;
	setAttr ".rs" 35209;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.2612849333371659 0.38525099923842943 -0.19434392848291732 ;
	setAttr ".cbx" -type "double3" 0.2612849333371659 0.38525099923842943 0.19434392848291732 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "BAC60A88-491B-8D64-7AED-A0836184699C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[68:71]" -type "float3"  0 -0.26610801 0 0 -0.26610801
		 0 0 -0.26610801 0 0 -0.26610801 0;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "0EE686AE-4286-70B8-0AEA-4C851438FC03";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.39828202 0 ;
	setAttr ".rs" 44966;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128495305520755 0.39828201230105686 -0.19434391381660551 ;
	setAttr ".cbx" -type "double3" 0.26128495305520755 0.39828201230105686 0.19434391381660551 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "6781DC5E-4664-505F-5F74-6DBF78EE084B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[72:75]" -type "float3"  -0.021729447 0 -0.021729419
		 0.021729447 0 -0.021729419 0.021729447 0 0.021729419 -0.021729447 0 0.021729419;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "D5B1FF47-4D43-44A7-A60E-5584F805557B";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.39828193 0 ;
	setAttr ".rs" 56650;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27566175186878622 0.39828191890015896 -0.20503737108662412 ;
	setAttr ".cbx" -type "double3" 0.27566175186878622 0.39828191890015896 0.20503737108662412 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "FD6AB8E0-451B-14F2-5C5C-6FAD675AE3E7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[76:79]" -type "float3"  -0.011852426 -0.465689 -0.011852408
		 0.011852426 -0.465689 -0.011852408 0.011852426 -0.465689 0.011852408 -0.011852426
		 -0.465689 0.011852408;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "ED7575B0-4DB1-F413-0558-4EA11A35E7D3";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.42108622 0 ;
	setAttr ".rs" 60222;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28350365647113213 0.42108621510998145 -0.21087016329457758 ;
	setAttr ".cbx" -type "double3" 0.28350365647113213 0.42108621510998145 0.21087016329457758 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "3118445C-4C9A-A0F5-2209-32884A299586";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[80:83]" -type "float3"  0.033581875 0 0.033581831
		 -0.033581875 0 0.033581831 -0.033581875 0 -0.033581831 0.033581875 0 -0.033581831;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "B95C23F4-4DF5-3EF2-2C0A-F7883BE81A89";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.42108622 0 ;
	setAttr ".rs" 34671;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128495305520755 0.42108621510998145 -0.19434386981767007 ;
	setAttr ".cbx" -type "double3" 0.26128495305520755 0.42108621510998145 0.19434386981767007 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "3D3FE2BB-41F4-1A44-C159-159AC2E49C4A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[84:87]" -type "float3"  0 -8.18282318 0 0 -8.18282318
		 0 0 -8.18282318 0 0 -8.18282318 0;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "D2146799-4025-C2AB-8EF1-3E94CCECD90A";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.82179052 0 ;
	setAttr ".rs" 56940;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128495305520755 0.82179054394228213 -0.19434385515135824 ;
	setAttr ".cbx" -type "double3" 0.26128495305520755 0.82179054394228213 0.19434385515135824 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "EB1D870E-4B21-1971-5017-FC9731906E76";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[88:91]" -type "float3"  -0.10969788 -1.6689301e-06
		 -4.4703484e-08 0.10969788 -1.6689301e-06 -4.4703484e-08 0.10969788 -1.6689301e-06
		 4.4703484e-08 -0.10969788 -1.6689301e-06 4.4703484e-08;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "FCDD92E3-44A6-FF5D-DD93-64B9255EEEEB";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.82179052 0 ;
	setAttr ".rs" 40784;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33386410668165406 0.82179054394228213 -0.19434385515135824 ;
	setAttr ".cbx" -type "double3" 0.33386410668165406 0.82179054394228213 0.19434385515135824 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "236D77C8-4EB7-0316-1A1F-0F8258D2BE42";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[54]" -type "float3" 0 0 2.0861626e-07 ;
	setAttr ".tk[55]" -type "float3" 0 0 2.0861626e-07 ;
	setAttr ".tk[58]" -type "float3" 0 0 2.0861626e-07 ;
	setAttr ".tk[59]" -type "float3" 0 0 2.0861626e-07 ;
	setAttr ".tk[88]" -type "float3" 0 -0.78686112 0.18192405 ;
	setAttr ".tk[89]" -type "float3" 0 -0.78686112 0.18192405 ;
	setAttr ".tk[90]" -type "float3" 0 -0.78686112 -0.18192405 ;
	setAttr ".tk[91]" -type "float3" 0 -0.78686112 -0.18192405 ;
	setAttr ".tk[92]" -type "float3" 0 -5.5521388 0.18192405 ;
	setAttr ".tk[93]" -type "float3" 0 -5.5521388 0.18192405 ;
	setAttr ".tk[94]" -type "float3" 0 -5.5521388 -0.18192405 ;
	setAttr ".tk[95]" -type "float3" 0 -5.5521388 -0.18192405 ;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "34B22DCB-481A-0211-02B5-2584CCA71AC4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 45 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[50]" "e[54]" "e[58]" "e[62]" "e[66]" "e[70]" "e[74]" "e[78]" "e[82]" "e[86]" "e[90]" "e[94]" "e[98]" "e[102]" "e[106]" "e[110]" "e[114]" "e[118]" "e[122]" "e[126]" "e[130]" "e[134]" "e[138]" "e[142]" "e[146]" "e[150]" "e[154]" "e[158]" "e[162]" "e[166]" "e[170]" "e[174]" "e[178]" "e[182]" "e[186]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".wt" 0.50656133890151978;
	setAttr ".dr" no;
	setAttr ".re" 106;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplit -n "polySplit1";
	rename -uid "5D466470-4A3B-0C79-B8C5-C2B3BD9A53BB";
	setAttr -s 5 ".e[0:4]"  1 0.799986 0.2 0.80000001 0;
	setAttr -s 5 ".d[0:4]"  -2147483540 -2147483535 -2147483365 -2147483537 -2147483536;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "A0FDFB6E-4C4F-1494-82AD-64BD685003EF";
	setAttr ".ics" -type "componentList" 48 "e[190]" "e[192]" "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[216]" "e[218]" "e[220]" "e[222]" "e[224]" "e[226]" "e[228]" "e[230]" "e[232]" "e[234]" "e[236]" "e[238]" "e[240]" "e[242]" "e[244]" "e[246]" "e[248]" "e[250]" "e[252]" "e[254]" "e[256]" "e[258]" "e[260]" "e[262]" "e[264]" "e[266]" "e[268]" "e[270]" "e[272]" "e[274]" "e[276]" "e[278]" "e[280]" "e[282:283]" "e[285]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "D213AC8B-4F97-3F6A-2143-8A965321E441";
	setAttr ".ics" -type "componentList" 1 "f[56]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.10634475 0.15837508 ;
	setAttr ".rs" 55591;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21292659392218535 -0.41452870006755782 0.15837507742193188 ;
	setAttr ".cbx" -type "double3" 0.21292659392218535 0.20183918916405386 0.15837507742193188 ;
createNode polyTweak -n "polyTweak23";
	rename -uid "205538E3-40F8-990C-E948-5CA2DC4E9F4F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[98:101]" -type "float3"  0.078718193 -1.2121321 0 -0.078718193
		 -1.2121321 0 0.078718193 0.31900012 0 -0.078718193 0.31902701 0;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "4A6E46A4-4ACD-DD22-057D-9AA27CA55A48";
	setAttr ".dc" -type "componentList" 1 "f[56]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "7B5D8C57-46EF-FC9F-25C0-DA9F52FAC638";
	setAttr ".ics" -type "componentList" 7 "e[81:82]" "e[84]" "e[86:89]" "e[91]" "e[168]" "e[187:190]" "e[192]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "974F50A7-48B6-3CD8-94B5-0E932F4D2A77";
	setAttr ".ics" -type "componentList" 7 "e[81:82]" "e[84]" "e[86:89]" "e[91]" "e[168]" "e[187:190]" "e[192]";
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "960266F9-400D-D433-2B3B-D383035EFAC3";
	setAttr ".ics" -type "componentList" 4 "e[84]" "e[86]" "e[168]" "e[187]";
createNode polyCloseBorder -n "polyCloseBorder4";
	rename -uid "97237C19-4897-4C72-0D09-A5A83A7BABCE";
	setAttr ".ics" -type "componentList" 2 "e[84]" "e[86]";
createNode polyCloseBorder -n "polyCloseBorder5";
	rename -uid "020D7917-4640-8ADE-F8F1-F09FF37937E8";
	setAttr ".ics" -type "componentList" 4 "e[123:131]" "e[133]" "e[175]" "e[180]";
createNode polyCloseBorder -n "polyCloseBorder6";
	rename -uid "550215FB-4A75-435C-00FF-5F8C6D128231";
	setAttr ".ics" -type "componentList" 4 "e[126]" "e[128]" "e[175]" "e[180]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "3CDDFDB7-4DC3-2E3A-F9CC-E4A0A5BBB82B";
	setAttr ".dc" -type "componentList" 4 "f[3]" "f[85]" "f[87]" "f[89:92]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "E450F084-4A13-C9AE-8BB2-3FB56DFF4B4F";
	setAttr ".dc" -type "componentList" 1 "f[85]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "D31F769C-4534-977D-DD35-9DA3F01F4C75";
	setAttr ".dc" -type "componentList" 1 "f[84]";
createNode polyCloseBorder -n "polyCloseBorder7";
	rename -uid "DEE37F47-4B7E-2F1A-C969-C99C2C600D87";
	setAttr ".ics" -type "componentList" 4 "e[120]" "e[122]" "e[162]" "e[165]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "D3FC0AD3-4864-D190-1677-DAA7FC4ACDC2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[126]" "e[128]" "e[163:164]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.82179052 0 ;
	setAttr ".rs" 63965;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128495305520755 0.82179054394228213 -0.19434381115242283 ;
	setAttr ".cbx" -type "double3" 0.26128495305520755 0.82179054394228213 0.19434381115242283 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "948C6791-4818-A65D-43EF-BBA3A7F612E3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[56]" -type "float3" 0 9.5367432e-07 0 ;
	setAttr ".tk[57]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[58]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".tk[59]" -type "float3" -2.9802322e-08 1.0658141e-14 0 ;
	setAttr ".tk[94]" -type "float3" -0.18328483 -1.7568434 0.18328437 ;
	setAttr ".tk[95]" -type "float3" -0.18328483 -1.7568434 -0.18328437 ;
	setAttr ".tk[96]" -type "float3" 0.18328483 -1.7568434 0.18328437 ;
	setAttr ".tk[97]" -type "float3" 0.18328483 -1.7568434 -0.18328437 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "775C5A14-49B4-8693-BC18-1F889A3EC2FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[187]" "e[190:192]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.90782136 0 ;
	setAttr ".rs" 44580;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.14001863209211796 0.90782136372683575 -0.10414593483841075 ;
	setAttr ".cbx" -type "double3" 0.14001863209211796 0.90782136372683575 0.10414593483841075 ;
createNode polyTweak -n "polyTweak25";
	rename -uid "E61D3B07-4B26-4868-BA12-93B234F321EC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[98:101]" -type "float3"  0 -0.47970986 0 0 -0.47970986
		 0 0 -0.47970986 0 0 -0.47970986 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "C65B8BE4-41A2-925E-6D78-E2A57D44EA44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[195]" "e[198:200]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.93131226 0 ;
	setAttr ".rs" 49083;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.14001864195113878 0.93131224993661066 -0.10414592750525484 ;
	setAttr ".cbx" -type "double3" 0.14001864195113878 0.93131224993661066 0.10414592750525484 ;
createNode polyTweak -n "polyTweak26";
	rename -uid "4EB2DF65-4455-0294-2B34-64BBFF2C667A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[102:105]" -type "float3"  0.040244535 -0.47694388 -0.040244475
		 0.040244535 -0.47694388 0.040244475 -0.040244535 -0.47694388 -0.040244475 -0.040244535
		 -0.47694388 0.040244475;
createNode polyCloseBorder -n "polyCloseBorder8";
	rename -uid "F31EDB50-4170-57B8-6DC5-30B307721645";
	setAttr ".ics" -type "componentList" 2 "e[203]" "e[206:208]";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "10BE6CDB-427B-5FCF-C0D2-B89FF8BFCFDD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "f[0]" "f[7]" "f[11]" "f[15]" "f[23]" "f[31]" "f[39]" "f[43]" "f[47]" "f[51]" "f[58]" "f[62]" "f[66]" "f[74]" "f[78]" "f[82]" "f[85]" "f[87:90]" "f[94]" "f[98]" "f[102]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 0.17510270699858665 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 0.14191357046365738 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "8941D328-4DF5-DE27-920D-E98BB8F3BB71";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "f[0]" "f[7]" "f[11]" "f[15]" "f[19]" "f[23]" "f[31]" "f[35]" "f[39]" "f[47]" "f[51]" "f[58]" "f[62]" "f[66]" "f[74]" "f[82]" "f[85]" "f[87:90]" "f[94]" "f[98]" "f[102]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 0.17510269582271576 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "7B33879F-47B8-653F-8B60-2D9352BD7B4D";
	setAttr ".uopa" yes;
	setAttr -s 56 ".uvtk";
	setAttr ".uvtk[96]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[97]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[98]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[99]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[112]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[113]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[114]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[115]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[128]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[129]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[130]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[131]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[144]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[145]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[146]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[148]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[149]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[150]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[151]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[154]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[157]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[158]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[159]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[160]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[161]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[162]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[163]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[164]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[165]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[166]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[167]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[168]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[169]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[172]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[175]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[176]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[177]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[178]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[179]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[180]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[181]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[182]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[183]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[184]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[185]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[186]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[187]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[188]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[189]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[190]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[191]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[192]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[193]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[194]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[195]" -type "float2" -0.99926829 0 ;
	setAttr ".uvtk[196]" -type "float2" -0.99926829 0 ;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "56DE95EE-4557-E2EA-1F85-988D38CB27D9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "f[4]" "f[8]" "f[12]" "f[16]" "f[24]" "f[32]" "f[36]" "f[40]" "f[44]" "f[48]" "f[52]" "f[55]" "f[59]" "f[63]" "f[67]" "f[75]" "f[83:84]" "f[92]" "f[96]" "f[100]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.23541624844074249 -0.076932966709136963 0 ;
	setAttr ".ps" -type "double2" 0.19079521298408508 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "D91CD246-4FB0-205D-26AF-46A29588B843";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "f[4]" "f[8]" "f[12]" "f[16]" "f[24]" "f[32]" "f[36]" "f[40]" "f[44]" "f[48]" "f[52]" "f[55]" "f[59]" "f[63]" "f[67]" "f[75]" "f[83:84]" "f[92]" "f[96]" "f[100]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.23541624844074249 -0.076932966709136963 0 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.19079521298408508 0.49211886525154114 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj5";
	rename -uid "45829DFC-410D-53F9-3C0F-CFBC6E1B62E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "f[4]" "f[8]" "f[12]" "f[16]" "f[24]" "f[32]" "f[36]" "f[40]" "f[44]" "f[48]" "f[52]" "f[55]" "f[59]" "f[63]" "f[67]" "f[75]" "f[83:84]" "f[92]" "f[96]" "f[100]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.23541624844074249 -0.076932966709136963 0 ;
	setAttr ".ic" -type "double2" 1.5261048965703372 0.5 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.49211883544921875 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj6";
	rename -uid "04CDDF1B-4BC4-CF38-289D-1A804BB3117C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "f[2]" "f[5]" "f[9]" "f[13]" "f[17]" "f[21]" "f[29]" "f[37]" "f[45]" "f[49]" "f[53]" "f[56]" "f[60]" "f[64]" "f[72]" "f[80]" "f[93]" "f[97]" "f[101]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 -0.17510264366865158 ;
	setAttr ".ic" -type "double2" 0.5 -0.58451397370907565 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj7";
	rename -uid "AEBB8764-4BAB-BA95-1C37-D8B38644F97B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "f[3]" "f[6]" "f[10]" "f[14]" "f[22]" "f[30]" "f[38]" "f[46]" "f[50]" "f[54]" "f[57]" "f[61]" "f[65]" "f[73]" "f[81]" "f[86]" "f[91]" "f[95]" "f[99]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.23541624844074249 -0.076932966709136963 0 ;
	setAttr ".ic" -type "double2" 0.5 1.7397694890217117 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.49211877584457397 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj8";
	rename -uid "F68760ED-45FE-D387-D3D0-ADA0CA8C9BCF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[103]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.95466780662536621 0 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.24790194630622864 0 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj9";
	rename -uid "C2CFDFC3-43FB-0884-E381-A6BD226AFF65";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[103]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.95466780662536621 0 ;
	setAttr ".ic" -type "double2" 1.8208100967646392 1.7046277781007109 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.33329111337661743 0.24790194630622864 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "E1063568-480B-D8F3-2E92-908999C1AE63";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode polyPlanarProj -n "polyPlanarProj10";
	rename -uid "48B7393A-46B1-29E4-125F-73823265609F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "f[0]" "f[6]" "f[10]" "f[14]" "f[22]" "f[30]" "f[38]" "f[46]" "f[50]" "f[57]" "f[61]" "f[65]" "f[73]" "f[77]" "f[81]" "f[84]" "f[86:89]" "f[93]" "f[97]" "f[101]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 0.175102598965168 ;
	setAttr ".ic" -type "double2" -0.53341160348714878 1.7474318108251019 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj11";
	rename -uid "8C4A7469-4991-8FD4-A4E3-B7AA4C8A99E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "f[0]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22]" "f[30]" "f[34]" "f[38]" "f[42]" "f[46]" "f[50]" "f[61]" "f[65]" "f[73]" "f[77]" "f[81]" "f[84]" "f[86:89]" "f[93]" "f[97]" "f[101]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 0.1751025877892971 ;
	setAttr ".ic" -type "double2" -0.91864788171016798 0.5 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj12";
	rename -uid "91B52033-4D02-35F9-652E-74BC37537D4A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "f[0]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22]" "f[30]" "f[34]" "f[38]" "f[42]" "f[46]" "f[50]" "f[57]" "f[61]" "f[65]" "f[73]" "f[77]" "f[81]" "f[84]" "f[86:89]" "f[93]" "f[97]" "f[101]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 0.17510257661342621 ;
	setAttr ".ic" -type "double2" -0.93087760482835913 0.5 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj13";
	rename -uid "97A3DD4E-4626-2D48-5C9B-50A3BB5262B7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "f[0]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22]" "f[30]" "f[34]" "f[38]" "f[42]" "f[46]" "f[50]" "f[57]" "f[61]" "f[65]" "f[69]" "f[73]" "f[77]" "f[81]" "f[84]" "f[86:89]" "f[93]" "f[97]" "f[101]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 0.17510256543755531 ;
	setAttr ".ic" -type "double2" -0.961451912623837 0.5 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "41A0F2F6-4370-8D49-DBD2-5A8DCEBA227E";
	setAttr ".uopa" yes;
	setAttr -s 44 ".uvtk";
	setAttr ".uvtk[18]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[19]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[20]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[21]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[22]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[23]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[24]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[25]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[26]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[27]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[28]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[29]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[30]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[31]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[32]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[33]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[34]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[35]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[36]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[38]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[39]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[42]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[43]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[44]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[46]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[47]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[48]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[70]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[71]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[72]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[73]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[74]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[75]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[76]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[77]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[78]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[79]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[80]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[81]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[82]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[83]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[84]" -type "float2" -0.22319245 0 ;
	setAttr ".uvtk[85]" -type "float2" -0.22319245 0 ;
createNode polyPlanarProj -n "polyPlanarProj14";
	rename -uid "18E1C2F9-4B8B-5176-ED72-1DBFA82F0A45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "f[2]" "f[5]" "f[9]" "f[13]" "f[21]" "f[29]" "f[33]" "f[37]" "f[41]" "f[45]" "f[49]" "f[53]" "f[56]" "f[60]" "f[64]" "f[68]" "f[72]" "f[76]" "f[80]" "f[85]" "f[90]" "f[94]" "f[98]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.23541624844074249 -0.076932966709136963 0 ;
	setAttr ".ps" -type "double2" 0.19079521298408508 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj15";
	rename -uid "0826EA13-40DD-55EA-411F-00A62EC9CCFE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "f[2]" "f[5]" "f[9]" "f[13]" "f[21]" "f[29]" "f[33]" "f[37]" "f[41]" "f[45]" "f[49]" "f[53]" "f[56]" "f[60]" "f[64]" "f[68]" "f[72]" "f[76]" "f[80]" "f[85]" "f[90]" "f[94]" "f[98]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.23541624844074249 -0.076932966709136963 0 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.49211853742599487 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "23988076-41DC-9960-663E-DF901A4D4242";
	setAttr ".uopa" yes;
	setAttr -s 51 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[3]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[5]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[6]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[7]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[11]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[12]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[15]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[16]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[36]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[40]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[44]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[48]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[51]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[52]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[55]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[56]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[59]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[60]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[63]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[64]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[67]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[68]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[72]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[76]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[80]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[84]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[87]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[88]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[91]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[96]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[97]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[98]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[99]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[112]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[113]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[114]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[115]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[128]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[129]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[130]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[185]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[186]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[187]" -type "float2" 0 1.1740533 ;
	setAttr ".uvtk[188]" -type "float2" 0 1.1740533 ;
	setAttr ".uvtk[189]" -type "float2" 0 1.1740535 ;
	setAttr ".uvtk[190]" -type "float2" 0 1.1740535 ;
	setAttr ".uvtk[191]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[192]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[246]" -type "float2" 0 1.1740534 ;
	setAttr ".uvtk[247]" -type "float2" 0 1.1740534 ;
createNode polyPlanarProj -n "polyPlanarProj16";
	rename -uid "240C8130-41FD-9AAA-38A0-B3B403688E14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "f[3]" "f[7]" "f[11]" "f[15]" "f[19]" "f[23]" "f[27]" "f[31]" "f[35]" "f[39]" "f[43]" "f[47]" "f[51]" "f[54]" "f[58]" "f[62]" "f[66]" "f[70]" "f[74]" "f[78]" "f[82:83]" "f[91]" "f[95]" "f[99]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.23541624844074249 -0.076932966709136963 0 ;
	setAttr ".ic" -type "double2" 1.8850161431351427 0.5 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.49211850762367249 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj17";
	rename -uid "C3545B54-4F38-EDA0-18A6-168AD9F1E061";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "f[1]" "f[4]" "f[8]" "f[12]" "f[16]" "f[20]" "f[24]" "f[28]" "f[32]" "f[36]" "f[40]" "f[44]" "f[48]" "f[52]" "f[55]" "f[59]" "f[63]" "f[71]" "f[75]" "f[79]" "f[92]" "f[96]" "f[100]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 -0.17510252073407173 ;
	setAttr ".ic" -type "double2" 0.5 -0.81018324513589191 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj18";
	rename -uid "771399D3-492B-D1C7-07EB-508E2294D141";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "f[1]" "f[4]" "f[8]" "f[12]" "f[16]" "f[20]" "f[24]" "f[28]" "f[32]" "f[36]" "f[40]" "f[44]" "f[48]" "f[52]" "f[55]" "f[59]" "f[63]" "f[67]" "f[71]" "f[75]" "f[79]" "f[92]" "f[96]" "f[100]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 -0.17510250955820084 ;
	setAttr ".ic" -type "double2" 0.5 -0.60351743563528992 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj19";
	rename -uid "8F4EA246-4ED7-D7BE-0789-7084D51BEE23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 25 "f[0]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22]" "f[26]" "f[30]" "f[34]" "f[38]" "f[42]" "f[46]" "f[50]" "f[57]" "f[61]" "f[65]" "f[69]" "f[73]" "f[77]" "f[81]" "f[84]" "f[86:89]" "f[93]" "f[97]" "f[101]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.076932966709136963 0.17510249838232994 ;
	setAttr ".ic" -type "double2" -0.91936514404086633 0.5 ;
	setAttr ".ps" -type "double2" 0.66162770986557007 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj20";
	rename -uid "DBDF9B29-4305-FA21-AF28-76AF982A5DFC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "f[2]" "f[5]" "f[9]" "f[13]" "f[21]" "f[25]" "f[29]" "f[33]" "f[37]" "f[41]" "f[45]" "f[49]" "f[53]" "f[56]" "f[60]" "f[64]" "f[68]" "f[72]" "f[76]" "f[80]" "f[85]" "f[90]" "f[94]" "f[98]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.23541624844074249 -0.076932966709136963 0 ;
	setAttr ".ic" -type "double2" 0.5 1.7121781303036596 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.49211838841438293 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj21";
	rename -uid "AE081FB6-4CAD-EB7D-39D6-6EBEA449E69E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 25 "f[2]" "f[5]" "f[9]" "f[13]" "f[17]" "f[21]" "f[25]" "f[29]" "f[33]" "f[37]" "f[41]" "f[45]" "f[49]" "f[53]" "f[56]" "f[60]" "f[64]" "f[68]" "f[72]" "f[76]" "f[80]" "f[85]" "f[90]" "f[94]" "f[98]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.23541624844074249 -0.076932966709136963 0 ;
	setAttr ".ic" -type "double2" 0.5 1.9625811243569982 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.49211835861206055 2.0632015466690063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "81594D60-4DBE-B8CD-796A-F68154EE7ACC";
	setAttr ".uopa" yes;
	setAttr -s 212 ".uvtk[0:211]" -type "float2" 0.59780914 0.17953181 2.98282528
		 -1.28304935 -0.017174527 1.28304923 2.98282528 -1.28304935 0.59780914 0.17953181
		 2.98282528 -1.28304935 2.98282528 -1.28304935 2.98282528 -1.28304935 0.59780914 0.17953181
		 0.59780914 0.17953181 -0.017174527 1.28304923 2.98282528 -1.28304935 2.98282528 -1.28304935
		 0.59780914 0.17953181 -0.017174527 1.28304923 2.98282528 -1.28304935 2.98282528 -1.28304935
		 0.59780914 0.17953181 0.59780914 0.17953181 2.98282528 -1.28304935 2.98282528 -1.28304935
		 0.59780914 0.17953181 0.59780914 0.17953181 2.98282528 -1.28304935 2.98282528 -1.28304935
		 0.59780914 0.17953181 -0.017174527 1.28304923 2.98282528 -1.28304935 2.98282528 -1.28304935
		 2.40219045 0.17953181 -0.017174527 1.28304923 2.98282528 -1.28304935 2.98282528 -1.28304935
		 2.40219045 0.17953181 -0.017174527 1.28304923 -0.017174527 1.28304923 2.98282528
		 -1.28304935 0.59780914 0.17953181 -0.017174527 1.28304923 -0.017174527 1.28304923
		 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527 1.28304923 -0.017174527
		 1.28304923 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527 1.28304923 -0.017174527
		 1.28304923 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527 1.28304923 2.98282528
		 -1.28304935 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527 1.28304923
		 2.98282528 -1.28304935 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527
		 1.28304923 2.98282528 -1.28304935 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527
		 1.28304923 2.98282528 -1.28304935 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527
		 1.28304923 2.98282528 -1.28304935 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527
		 1.28304923 -0.017174527 1.28304923 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527
		 1.28304923 -0.017174527 1.28304923 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527
		 1.28304923 -0.017174527 1.28304923 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527
		 1.28304923 -0.017174527 1.28304923 2.98282528 -1.28304935 0.59780914 0.17953181 -0.017174527
		 1.28304923 2.98282528 -1.28304935 2.98282528 -1.28304935 0.59780914 0.17953181 0.59780914
		 0.17953181 2.98282528 -1.28304935 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.98282528 -1.28304935 2.98282528 -1.28304935 2.98282528
		 -1.28304935 2.98282528 -1.28304935 0.59780914 0.17953181 0.59780914 0.17953181 0.59780914
		 0.17953181 0.59780914 0.17953181 -0.017174527 1.28304923 -0.017174527 1.28304923
		 -0.017174527 1.28304923 -0.017174527 1.28304923 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.98282528 -1.28304935 2.98282528
		 -1.28304935 2.98282528 -1.28304935 2.98282528 -1.28304935 0.59780914 0.17953181 0.59780914
		 0.17953181 0.59780914 0.17953181 0.59780914 0.17953181 -0.017174527 1.28304923 -0.017174527
		 1.28304923 -0.017174527 1.28304923 -0.017174527 1.28304923 2.40219045 0.17953181
		 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.98282528 -1.28304935
		 2.98282528 -1.28304935 2.98282528 -1.28304935 1.99678195 -0.69247937 0.59780914 0.17953181
		 0.59780914 0.17953181 0.59780914 0.17953181 2.66201496 -0.69247937 -0.017174527 1.28304923
		 -0.017174527 1.28304923 -0.017174527 1.28304923 2.66201496 -1.35771227 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 1.99678195 -1.35771227 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 2.40219045
		 0.17953181 2.40219045 0.17953181 2.40219045 0.17953181 -0.017174527 1.28304923 -0.017174527
		 1.28304923 2.98282528 -1.28304935 2.98282528 -1.28304935 -0.017174527 1.28304923
		 -0.017174527 1.28304923 -0.017174527 1.28304923 -0.017174527 1.28304923 -0.017174527
		 1.28304923 -0.017174527 1.28304923 0.59780914 0.17953181 0.59780914 0.17953181 0.59780914
		 0.17953181 0.59780914 0.17953181 0.59780914 0.17953181 0.59780914 0.17953181 0.59780914
		 0.17953181 0.59780914 0.17953181 0.59780914 0.17953181 0.59780914 0.17953181 0.59780914
		 0.17953181 0.59780914 0.17953181 0.59780914 0.17953181 0.59780914 0.17953181 0.59780914
		 0.17953181 -0.017174527 1.28304923 -0.017174527 1.28304923 -0.017174527 1.28304923
		 -0.017174527 1.28304923;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "D94019C5-4D3A-AE8D-4155-268A56F4ABAF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:102]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "62FD65C0-4416-0834-B3A3-899B001993CE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:102]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "AC379A9B-4B47-2C9A-DE89-2A96A4E449A5";
	setAttr ".uopa" yes;
	setAttr -s 212 ".uvtk[0:211]" -type "float2" -0.40883023 -0.0054754019
		 0.29610443 0.90627956 -0.21887609 0.90628004 0.52679729 0.40840447 -0.1781373 0.49239975
		 0.53861409 0.41387984 0.30792111 0.91175491 0.29541969 0.88302678 -0.18995404 0.49787515
		 -0.42064697 1.1866064e-12 -0.23069294 0.91175544 0.50861478 0.42291474 0.30060309
		 0.86153555 -0.39064777 0.0090348478 -0.46138582 0.41387969 0.49556988 0.44076365
		 0.29156262 0.85734659 -0.17745256 0.46914718 -0.37760288 0.026883725 0.48652941 0.43657467
		 0.29611951 0.84751207 -0.18263602 0.44765586 -0.36856222 0.022694711 0.48197252 0.44640923
		 0.18606043 0.7965157 -0.17359537 0.44346684 -0.44956893 0.40840429 0.37191343 0.39541286
		 0.17968059 0.8102845 0.26718295 0.49787578 -0.21819131 0.88302743 0.37829334 0.38164395
		 0.17507172 0.79859203 0.25536615 0.49240041 -0.43138662 0.42291456 -0.22337487 0.86153609
		 0.36639339 0.38568687 -0.36400533 0.032529276 -0.41834164 0.44076347 -0.21433425
		 0.85734701 0.17780602 0.79269093 -0.17815232 0.43363217 -0.40930101 0.43657443 -0.21889132
		 0.84751195 0.36365902 0.39158809 -0.25394636 -0.018467087 -0.40474394 0.4464094 -0.10883223
		 0.79651558 0.17426836 0.79105181 -0.068093359 0.3826358 -0.29468483 0.39541304 0.36012137
		 0.38994893 0.18156004 0.77531511 -0.26032621 -0.032235887 -0.10245219 0.81028473
		 0.3528299 0.40568531 0.17802238 0.77367592 -0.061713517 0.39640459 -0.30106479 0.38164395
		 0.34929231 0.40404609 0.1815536 0.74544609 -0.24842626 -0.028192826 -0.097843528
		 0.79859197 0.33003819 0.42499101 0.032816827 0.6765281 -0.057104707 0.38471213 -0.28916466
		 0.38568735 0.14411694 0.33884349 -0.0043675303 0.65929854 -0.24569201 -0.022291858
		 -0.10057783 0.79269087 -0.28643042 0.39158833 -0.020208955 0.68421346 -0.05983901
		 0.37881103 -0.097040176 0.79105163 -0.28289276 0.38994914 0.15288344 0.31064999 -0.24215436
		 -0.023931045 -0.10433149 0.77531564 -0.27560139 0.40568522 -0.028303862 0.69240969
		 -0.056301355 0.37717184 -0.1007939 0.77367646 -0.27206373 0.40404606 0.15390325 0.29917559
		 -0.23486274 -0.0081944764 -0.10432532 0.74544626 -0.031448424 0.69095266 0.15075856
		 0.29771852 -0.06359297 0.36143526 -0.23132509 -0.0098336041 -0.036461174 0.7017709
		 0.4860591 -0.0054753842 0.49787593 1.0049785e-09 0.25468132 0.4691478 0.46787667
		 0.0090349661 0.15577134 0.28690022 -0.044698417 0.70512229 0.15300262 0.27844939
		 -0.036951363 0.68840283 -0.060055315 0.35979614 -0.21207124 0.011110961 -0.063586593
		 0.33156648 -0.026149929 -0.075036526 -0.25280964 0.42499119 0.081596136 0.65929878
		 -0.066888303 0.33884352 0.097438037 0.68421429 0.25986487 0.44765639 0.45483172 0.026883785
		 0.25082427 0.44346738 0.44579113 0.022694789 0.14525574 0.29516873 -0.13364607 0.64359879
		 0.048560917 0.25036469 -0.11212385 0.54272634 0.085147798 0.26264969 0.1223346 0.245419
		 -0.034916461 -0.10323001 0.13817626 0.27033398 -0.075654835 0.31064975 0.10553262
		 0.69241011 -0.076674432 0.29917553 0.10867715 0.69095302 0.25538135 0.43363237 0.44123399
		 0.032529857 0.14532222 0.38263598 0.33117485 -0.018466543 -0.014481902 0.33199817
		 -0.11779237 0.54009974 -0.020150423 0.32937157 -0.96144485 0.038555056 -0.035935879
		 -0.1147041 0.14627105 0.27852991 -0.032791257 -0.11616114 -1 -0.038673371 -0.07352978
		 0.29771847 0.11369003 0.70177162 -0.07854265 0.28689983 -0.92277169 -0.077228427
		 0.13894224 0.39640504 0.33755481 -0.032235716 0.13433349 0.38471231 -0.88421655 1.1866064e-12
		 0.32565475 -0.028192338 0.13706784 0.37881124 0.3229205 -0.022291318 0.13353018 0.37717205
		 0.31938285 -0.023930505 0.14082155 0.36143601 0.31209141 -0.0081944242 0.13728389
		 0.35979682 0.30855381 -0.0098335892 0.14081536 0.3315666 0.28929967 0.011111446 -0.045106098
		 0.24541917 -0.06094794 0.27033457 0.11214486 -0.10322988 0.10337833 -0.075036101
		 -0.069042623 0.27853048 0.11316442 -0.11470412 -0.072187155 0.27707344 0.11001985
		 -0.11616117 -0.077200055 0.28789201 0.11503269 -0.12697975 -0.085437268 0.2912432
		 0.11226404 -0.13543063 -0.077690125 0.27452362 0.10451689 -0.11871098 -0.17438497
		 0.22971959 0.0078220069 -0.16351499 -0.0079191625 0.26264983 0.14056253 -0.057806574
		 0.14465161 0.28573781 0.25681639 0.043666452 0.014010176 0.22520454 0.12617271 -0.016867876
		 -0.1528628 0.12884715 -0.05522076 -0.0818813 -0.15853146 0.12622055 -0.060889415
		 -0.084507897 -0.17345159 0.1436459 -0.057241261 -0.10715616 0.20994166 0.55752563
		 0.093731403 0.30672342 -0.13271272 0.55752528 -0.01650238 0.30672336 0.028668046
		 0.25036466 0.21087503 0.64359921 -0.06802693 0.29516867 0.11418015 0.68840325 0.19502151
		 0.54010028 0.097379416 0.32937169 0.14941555 0.27707303 -0.037804127 -0.12697977
		 0.1544283 0.28789139 -0.035035431 -0.13543044 0.16266561 0.29124254 -0.027288377
		 -0.11871096 0.15491855 0.27452305 0.069406331 -0.163515 0.25161326 0.22971901 0.13244921
		 -0.081881374 0.23009104 0.12884656 0.13811773 -0.084507972 0.23575956 0.12621996
		 0.13446951 -0.10715633 0.25067991 0.14364552 0.18935287 0.54272687 0.091710776 0.33199829
		 0.12192729 0.70512301 -0.075773895 0.27844906;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "F4132BA5-440A-93B4-6905-F8801B400CC1";
	setAttr ".uopa" yes;
	setAttr -s 78 ".uvtk[0:77]" -type "float2" -0.60049087 0.1037553 -0.8374539
		 0.084128916 -0.73324072 -0.089087248 -0.39552778 0.22157145 -0.11854962 1.33876765
		 0.059662998 1.33876765 0.060352787 1.47427392 -0.11688909 1.47427392 -0.49607831
		 1.47427392 -0.49607831 1.33876765 -0.30398923 1.33876765 -0.30252755 1.47427392 -0.039496005
		 0.40115386 0.13257444 0.24058592 0.063818097 0.036222458 -0.17305291 0.0041842461
		 0.31514865 0.070216477 0.72660464 0.33598298 0.52696955 0.20703536 0.33873045 0.31653351
		 0.36095464 0.54867977 -0.49607831 1.59060287 -0.29623476 1.59060287 -0.11001563 1.59060287
		 0.063135892 1.59060287 -0.11688909 1.063528538 0.060352787 1.063528538 0.059662998
		 1.19903469 -0.11854962 1.19903469 -0.56645429 0.3332293 -0.7631585 0.27213001 -0.91646767
		 0.43081784 -1.060783863 0.065631628 -0.5343768 0.54950148 -0.49607831 1.19903469
		 -0.49607831 1.063528538 -0.30252755 1.063528538 -0.30398923 1.19903469 -0.49607831
		 0.94719946 0.48641449 -0.37888646 0.40331781 -0.16098559 0.55570483 -0.0054155588
		 0.78242207 -0.076696455 0.18439358 -0.14253265 -0.20235598 0.33260953 -0.52916479
		 -0.116992 -0.29623476 0.94719946 -0.11001563 0.94719946 0.063135892 0.94719946 -0.37893742
		 0.021265507 -0.17012978 -0.056478739 -0.68816721 1.33876765 -0.4619422 -0.32503957
		 -0.85835248 -0.2708354 0.061161935 -0.34304196 -0.88214099 0.94719946 -0.68816721
		 1.19903469 -0.87360692 1.19903469 0.23498735 1.33876765 0.4131999 1.33876765 0.41153947
		 1.47427392 0.23429759 1.47427392 0.23151451 1.59060287 0.4046658 1.59060287 -0.87360692
		 1.33876765 -0.87526733 1.063528538 -0.68962908 1.47427392 -0.87526733 1.47427392
		 -0.69592196 1.59060287 0.41153947 1.063528538 0.4131999 1.19903469 0.23498735 1.19903469
		 0.23429759 1.063528538 0.23151451 0.94719946 0.4046658 0.94719946 -0.68962908 1.063528538
		 -0.69592196 0.94719946 -0.88214099 1.59060287;
createNode animCurveTL -n "ikHandle1_translateX";
	rename -uid "49502BCA-4F9C-E252-A3BD-978FFB47061D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.0022239188161984249 12 0.12099795560348546 24 0.0023717391174602823 36 -0.11335440396483171 47 -0.0076066296207479289;
createNode animCurveTL -n "ikHandle1_translateY";
	rename -uid "AC5BC69F-40B7-CE5E-47BD-9B813CB81A82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.23725160772104636 12 -0.22972667755815235 24 -0.23725390123598145 36 -0.22652487158078871 47 -0.23703409237669359;
createNode animCurveTL -n "ikHandle1_translateZ";
	rename -uid "C6F3AC30-43C3-53C5-22CC-CEB89F7C777F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.00014748886116252658 12 -0.00016840574852444723 24 -0.00014748382459074498 36 -0.00017730676805548457 47 -0.000148096137092353;
createNode animCurveTU -n "ikHandle1_visibility";
	rename -uid "A2BE52C3-4C24-5B39-B9D3-5897A3D4E810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 12 1 24 1 36 1 47 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "ikHandle1_rotateX";
	rename -uid "ABA0C658-45EA-DCE5-CE44-A6B62CF80C9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 12 0 24 0 36 0 47 0;
createNode animCurveTA -n "ikHandle1_rotateY";
	rename -uid "84A64238-4AE2-141E-4CB5-8596C57BCA1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 12 0 24 0 36 0 47 0;
createNode animCurveTA -n "ikHandle1_rotateZ";
	rename -uid "38060F69-492A-D406-2CD7-81B3538CC8B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 12 0 24 0 36 0 47 0;
createNode animCurveTU -n "ikHandle1_scaleX";
	rename -uid "EF751C5B-4AFA-455B-03B6-098D6CEF5844";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 12 1 24 1 36 1 47 1;
createNode animCurveTU -n "ikHandle1_scaleY";
	rename -uid "32D3FD11-4958-0BCC-E9B0-68ABAA6C62A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 12 1 24 1 36 1 47 1;
createNode animCurveTU -n "ikHandle1_scaleZ";
	rename -uid "430A8F75-4199-278A-9A5E-0B805089655D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 12 1 24 1 36 1 47 1;
createNode animCurveTU -n "ikHandle1_poleVectorX";
	rename -uid "45BE7C4C-4B91-D6A9-7923-468C2A483286";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.72939031535854049 12 -0.72939030819106188 24 -0.72939031065003224 36 -0.7293903130740611 47 -0.7293903130740611;
createNode animCurveTU -n "ikHandle1_poleVectorY";
	rename -uid "4BD1434A-4781-3BB6-244E-359B06749782";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.0072588704578639114 12 -0.0072588697854849733 24 -0.0072588697902857512 36 -0.0072588694175290489 47 -0.0072588694175290489;
createNode animCurveTU -n "ikHandle1_poleVectorZ";
	rename -uid "11C7B513-4A06-4D53-EDED-11AF4E731E37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.11672031141515479 12 0.11672035624684904 24 0.11672034088034162 36 0.11672032575566378 47 0.11672032575566377;
createNode animCurveTU -n "ikHandle1_offset";
	rename -uid "5880F174-49BC-EC53-0646-EB813D403BEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 12 0 24 0 36 0 47 0;
createNode animCurveTA -n "ikHandle1_roll";
	rename -uid "7F9EDAF5-4EA8-6DA1-5822-4CBA1C7FFF5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 12 0 24 0 36 0 47 0;
createNode animCurveTA -n "ikHandle1_twist";
	rename -uid "B3BB53D8-431F-083E-01B2-06ABCF7BDAFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 12 0 24 0 36 0 47 0;
createNode animCurveTU -n "ikHandle1_ikBlend";
	rename -uid "5D66B97B-48D6-CB41-8B71-858F118D7924";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 12 1 24 1 36 1 47 1;
createNode file -n "file1";
	rename -uid "1E725BE7-4DFA-CEA8-5565-05987849ED51";
	setAttr ".ftn" -type "string" "/home/mtlaurentys/github/EleventhSemester/IGME0219/project//images/clockhand_uv_texture.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "F43058DD-4432-6A03-A254-09BDF047723D";
createNode lambert -n "file1Material";
	rename -uid "5CB3F01B-4DF7-5DF2-9A9B-D0AA7079A2ED";
createNode shadingEngine -n "file1SG";
	rename -uid "848B206E-4C91-8C43-2DBA-B8BD8A30B917";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "560A3628-4C39-ACF7-C24A-50A0A48DECC1";
createNode file -n "file2";
	rename -uid "7D119F80-46E0-4C28-70B9-DE819FD3C240";
	setAttr ".ftn" -type "string" "/home/mtlaurentys/github/EleventhSemester/IGME0219/project//images/clock_uv_texture.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "D569B4B9-4B6D-D45F-55CC-A8A3332E8C55";
createNode lambert -n "file2Material";
	rename -uid "5F5586C5-478E-1E92-3951-78924A8925E9";
createNode shadingEngine -n "file2SG";
	rename -uid "CF4D2EFD-4962-8080-58E9-C5954708F815";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "B1EACE4D-4622-5035-F412-B598622A2376";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "23936EA4-47F3-45E6-234D-569F00DFEEB4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -784.52377834963556 -391.07141303164678 ;
	setAttr ".tgi[0].vh" -type "double2" 267.85713221345679 405.35712674969784 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -505.71429443359375;
	setAttr ".tgi[0].ni[0].y" 150;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -812.85711669921875;
	setAttr ".tgi[0].ni[1].y" 127.14286041259766;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -198.57142639160156;
	setAttr ".tgi[0].ni[2].y" 150;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 108.57142639160156;
	setAttr ".tgi[0].ni[3].y" 127.14286041259766;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -198.57142639160156;
	setAttr ".tgi[0].ni[4].y" 145.71427917480469;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 108.57142639160156;
	setAttr ".tgi[0].ni[5].y" 122.85713958740234;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -812.85711669921875;
	setAttr ".tgi[0].ni[6].y" 122.85713958740234;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -505.71429443359375;
	setAttr ".tgi[0].ni[7].y" 145.71427917480469;
	setAttr ".tgi[0].ni[7].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
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
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":perspShape.msg" "imagePlaneShape1.ltc";
connectAttr "polyTweakUV5.out" "clockShape.i";
connectAttr "polyTweakUV5.uvtk[0]" "clockShape.uvst[0].uvtw";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.tx" "effector1.tx";
connectAttr "joint2.ty" "effector1.ty";
connectAttr "joint2.tz" "effector1.tz";
connectAttr "joint2.opm" "effector1.opm";
connectAttr "joint1.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_translateX.o" "ikHandle1.tx";
connectAttr "ikHandle1_translateY.o" "ikHandle1.ty";
connectAttr "ikHandle1_translateZ.o" "ikHandle1.tz";
connectAttr "ikHandle1_visibility.o" "ikHandle1.v";
connectAttr "ikHandle1_rotateX.o" "ikHandle1.rx";
connectAttr "ikHandle1_rotateY.o" "ikHandle1.ry";
connectAttr "ikHandle1_rotateZ.o" "ikHandle1.rz";
connectAttr "ikHandle1_scaleX.o" "ikHandle1.sx";
connectAttr "ikHandle1_scaleY.o" "ikHandle1.sy";
connectAttr "ikHandle1_scaleZ.o" "ikHandle1.sz";
connectAttr "ikHandle1_poleVectorX.o" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorY.o" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorZ.o" "ikHandle1.pvz";
connectAttr "ikHandle1_offset.o" "ikHandle1.off";
connectAttr "ikHandle1_roll.o" "ikHandle1.rol";
connectAttr "ikHandle1_twist.o" "ikHandle1.twi";
connectAttr "ikHandle1_ikBlend.o" "ikHandle1.ikb";
connectAttr "skinCluster1.og[0]" "armShape.i";
connectAttr "polyTweakUV8.out" "weigthShape.i";
connectAttr "polyTweakUV8.uvtk[0]" "weigthShape.uvst[0].uvtw";
connectAttr "polyTweakUV7.uvtk[0]" "weigthShapeOrig.uvst[0].uvtw";
connectAttr "polyPlanarProj23.out" "weigthShapeOrig.i";
connectAttr "polyTweakUV6.uvtk[0]" "armShapeOrig.uvst[0].uvtw";
connectAttr "polyTweakUV6.out" "armShapeOrig.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "file1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "file2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "file1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "file2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "imagePlaneShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "imagePlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "polySurfaceShape1.o" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "polyDelEdge4.ip";
connectAttr "polyDelEdge4.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyDelEdge5.ip";
connectAttr "polyDelEdge5.out" "polyDelEdge6.ip";
connectAttr "polyDelEdge6.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyCylProj1.ip";
connectAttr "armShape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyTweakUV6.ip";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "armShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "armShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "polySurfaceShape2.o" "polyDelEdge7.ip";
connectAttr "polyDelEdge7.out" "polyDelEdge8.ip";
connectAttr "polyDelEdge8.out" "polyDelEdge9.ip";
connectAttr "polyDelEdge9.out" "polyCylProj2.ip";
connectAttr "weigthShape.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyCylProj3.ip";
connectAttr "weigthShape.wm" "polyCylProj3.mp";
connectAttr "polyCylProj3.out" "polyCylProj4.ip";
connectAttr "weigthShape.wm" "polyCylProj4.mp";
connectAttr "polyCylProj4.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyPlanarProj22.ip";
connectAttr "weigthShape.wm" "polyPlanarProj22.mp";
connectAttr "polyPlanarProj22.out" "polyPlanarProj23.ip";
connectAttr "weigthShape.wm" "polyPlanarProj23.mp";
connectAttr "weigthShapeOrig.w" "skinCluster2.ip[0].ig";
connectAttr "weigthShapeOrig.o" "skinCluster2.orggeom[0]";
connectAttr "joint1.wm" "skinCluster2.ma[0]";
connectAttr "joint1.liw" "skinCluster2.lw[0]";
connectAttr "joint1.obcc" "skinCluster2.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "geomBind1.scs" "skinCluster2.gb";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "clockShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "clockShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "clockShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "clockShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "clockShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace6.ip";
connectAttr "clockShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace7.ip";
connectAttr "clockShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace8.ip";
connectAttr "clockShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace9.ip";
connectAttr "clockShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace10.ip";
connectAttr "clockShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace11.ip";
connectAttr "clockShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace12.ip";
connectAttr "clockShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace13.ip";
connectAttr "clockShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace14.ip";
connectAttr "clockShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace15.ip";
connectAttr "clockShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak15.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace16.ip";
connectAttr "clockShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak16.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace17.ip";
connectAttr "clockShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace18.ip";
connectAttr "clockShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak18.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace19.ip";
connectAttr "clockShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak19.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace20.ip";
connectAttr "clockShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak20.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace21.ip";
connectAttr "clockShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak21.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace22.ip";
connectAttr "clockShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak22.ip";
connectAttr "polyTweak22.out" "polySplitRing1.ip";
connectAttr "clockShape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyExtrudeFace23.ip";
connectAttr "clockShape.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak23.ip";
connectAttr "polyTweak23.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "polyCloseBorder4.ip";
connectAttr "polyCloseBorder4.out" "polyCloseBorder5.ip";
connectAttr "polyCloseBorder5.out" "polyCloseBorder6.ip";
connectAttr "polyCloseBorder6.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyCloseBorder7.ip";
connectAttr "polyCloseBorder7.out" "polyExtrudeEdge1.ip";
connectAttr "clockShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak24.ip";
connectAttr "polyTweak24.out" "polyExtrudeEdge2.ip";
connectAttr "clockShape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak25.ip";
connectAttr "polyTweak25.out" "polyExtrudeEdge3.ip";
connectAttr "clockShape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak26.ip";
connectAttr "polyTweak26.out" "polyCloseBorder8.ip";
connectAttr "polyCloseBorder8.out" "polyPlanarProj1.ip";
connectAttr "clockShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "clockShape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyPlanarProj3.ip";
connectAttr "clockShape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyPlanarProj4.ip";
connectAttr "clockShape.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyPlanarProj5.ip";
connectAttr "clockShape.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "polyPlanarProj6.ip";
connectAttr "clockShape.wm" "polyPlanarProj6.mp";
connectAttr "polyPlanarProj6.out" "polyPlanarProj7.ip";
connectAttr "clockShape.wm" "polyPlanarProj7.mp";
connectAttr "polyPlanarProj7.out" "polyPlanarProj8.ip";
connectAttr "clockShape.wm" "polyPlanarProj8.mp";
connectAttr "polyPlanarProj8.out" "polyPlanarProj9.ip";
connectAttr "clockShape.wm" "polyPlanarProj9.mp";
connectAttr "polyPlanarProj9.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyPlanarProj10.ip";
connectAttr "clockShape.wm" "polyPlanarProj10.mp";
connectAttr "polyPlanarProj10.out" "polyPlanarProj11.ip";
connectAttr "clockShape.wm" "polyPlanarProj11.mp";
connectAttr "polyPlanarProj11.out" "polyPlanarProj12.ip";
connectAttr "clockShape.wm" "polyPlanarProj12.mp";
connectAttr "polyPlanarProj12.out" "polyPlanarProj13.ip";
connectAttr "clockShape.wm" "polyPlanarProj13.mp";
connectAttr "polyPlanarProj13.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj14.ip";
connectAttr "clockShape.wm" "polyPlanarProj14.mp";
connectAttr "polyPlanarProj14.out" "polyPlanarProj15.ip";
connectAttr "clockShape.wm" "polyPlanarProj15.mp";
connectAttr "polyPlanarProj15.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyPlanarProj16.ip";
connectAttr "clockShape.wm" "polyPlanarProj16.mp";
connectAttr "polyPlanarProj16.out" "polyPlanarProj17.ip";
connectAttr "clockShape.wm" "polyPlanarProj17.mp";
connectAttr "polyPlanarProj17.out" "polyPlanarProj18.ip";
connectAttr "clockShape.wm" "polyPlanarProj18.mp";
connectAttr "polyPlanarProj18.out" "polyPlanarProj19.ip";
connectAttr "clockShape.wm" "polyPlanarProj19.mp";
connectAttr "polyPlanarProj19.out" "polyPlanarProj20.ip";
connectAttr "clockShape.wm" "polyPlanarProj20.mp";
connectAttr "polyPlanarProj20.out" "polyPlanarProj21.ip";
connectAttr "clockShape.wm" "polyPlanarProj21.mp";
connectAttr "polyPlanarProj21.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyLayoutUV2.ip";
connectAttr "polyLayoutUV2.out" "polyTweakUV5.ip";
connectAttr "skinCluster2.og[0]" "polyTweakUV8.ip";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file1.oc" "file1Material.c";
connectAttr "file1Material.oc" "file1SG.ss";
connectAttr "weigthShape.iog" "file1SG.dsm" -na;
connectAttr "armShape.iog" "file1SG.dsm" -na;
connectAttr "file1SG.msg" "materialInfo1.sg";
connectAttr "file1Material.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file2.oc" "file2Material.c";
connectAttr "file2Material.oc" "file2SG.ss";
connectAttr "clockShape.iog" "file2SG.dsm" -na;
connectAttr "file2SG.msg" "materialInfo2.sg";
connectAttr "file2Material.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file1Material.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "file1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "file2Material.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "file2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "file1SG.pa" ":renderPartition.st" -na;
connectAttr "file2SG.pa" ":renderPartition.st" -na;
connectAttr "file1Material.msg" ":defaultShaderList1.s" -na;
connectAttr "file2Material.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of clock_check_1.0009.ma
