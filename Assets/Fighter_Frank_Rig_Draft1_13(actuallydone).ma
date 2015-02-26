//Maya ASCII 2015 scene
//Name: Fighter_Frank_Rig_Draft1_13(actuallydone).ma
//Last modified: Mon, Feb 23, 2015 12:16:43 AM
//Codeset: UTF-8
file -rdi 1 -ns "Fighter_Frank_UVModel_Draft1_Done" -rfn "Fighter_Frank_UVModel_Draft1_DoneRN"
		 -op "v=0;" "/Users/publicuser/Desktop/Aislynns Stuff/Theory Fighter//Models/Frank/Draft 1/UV/Fighter_Frank_UVModel_Draft1_Done.ma";
file -r -ns "Fighter_Frank_UVModel_Draft1_Done" -dr 1 -rfn "Fighter_Frank_UVModel_Draft1_DoneRN"
		 -op "v=0;" "/Users/publicuser/Desktop/Aislynns Stuff/Theory Fighter//Models/Frank/Draft 1/UV/Fighter_Frank_UVModel_Draft1_Done.ma";
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.4";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.396550907500103 7.9668274678457465 1.739553407950722 ;
	setAttr ".r" -type "double3" 350.66164726949779 -3156.9999999969955 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 20.416087228629458;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 3.227866625184177 -0.91137777848469903 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 17.258441807625736;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "Frank_JT_Body";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 54.393300084753392 89.999999999999957 ;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-16 0.5822180465867447 -0.81303268460051203 0
		 1.6653345369377353e-16 0.8130326846005117 0.5822180465867447 0 1.0000000000000002 -2.7755575615628918e-16 0 0
		 0 3.8733081254488781 1.479895329214544 1;
	setAttr ".radi" 0.11783771817773828;
createNode joint -n "Frank_JT_chest" -p "Frank_JT_Body";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -39.856993725547845 ;
	setAttr ".bps" -type "matrix" -2.1501024898537985e-17 -0.074113604050624782 -0.99724980506121308 0
		 1.989900720427202e-16 0.99724980506121286 -0.074113604050625004 0 1.0000000000000002 -2.7755575615628918e-16 0 0
		 5.9164567891575885e-31 6.0937816827224474 -1.6208632060769319 1;
	setAttr ".radi" 0.099579759525998596;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_Neck" -p "Frank_JT_chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 7.6331317000752756 ;
	setAttr ".bps" -type "matrix" 5.1212587783727741e-18 0.059007362823597573 -0.99825754749593787 0
		 2.0008277175154155e-16 0.99825754749593765 0.059007362823597378 0 1.0000000000000002 -2.7755575615628918e-16 0 0
		 -1.5386528587513639e-16 5.9880448466617988 -3.0436254708460737 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_Head" -p "Frank_JT_Neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -51.630548042490489 ;
	setAttr ".bps" -type "matrix" -1.536908807658786e-16 -0.74603076225576193 -0.66591148193141014 0
		 1.282125423375694e-16 0.66591148193141014 -0.74603076225576226 0 1.0000000000000002 -2.7755575615628918e-16 0 0
		 -2.2830283295481767e-16 6.0369955576715029 -3.8717495282931549 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LowerJaw" -p "Frank_JT_Head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 44.767792648446523 ;
	setAttr ".bps" -type "matrix" -1.8823620506289381e-17 -0.060698683883210813 -0.99815613496829569 0
		 1.9926117071393948e-16 0.99815613496829547 -0.060698683883211035 0 1.0000000000000002 -2.7755575615628918e-16 0 0
		 -3.1345166804101515e-16 5.6573668038693947 -4.2106084049214498 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LowerJaw_End" -p "Frank_JT_LowerJaw";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.98826058853732179 1.833393919383041e-15 -8.6252919077548201e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.4799175042696771 -89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -3.4494483256787375e-16 -1.1081759232126573e-15 0
		 2.6595582108685099e-16 1 -4.5310977192514201e-15 0 1.1169170461044614e-15 4.3229309021342033e-15 1.0000000000000002 0
		 -4.1830722939851175e-16 5.5973806868115341 -5.1970467743173563 1;
	setAttr ".radi" 0.077131171035337051;
	setAttr ".liw" yes;
createNode parentConstraint -n "Frank_JT_LowerJaw_parentConstraint1" -p "Frank_JT_LowerJaw";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_LowJawW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.3955709864469857e-31 8.8817841970012523e-16 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -90 86.520082495730094 -90.000000000000014 ;
	setAttr ".lr" -type "double3" 1.8765823321965282e-14 1.2157379941891146e-14 3.8166656177562201e-14 ;
	setAttr ".rst" -type "double3" 0.50886474527435199 1.7763568394002505e-15 -6.9409641942780746e-18 ;
	setAttr ".rsrr" -type "double3" 1.8765823321965282e-14 1.2157379941891146e-14 3.8166656177562201e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Frank_JT_UpperJaw" -p "Frank_JT_Head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 34.721315558661253 ;
	setAttr ".bps" -type "matrix" -5.3295498307807959e-17 -0.23389328322044933 -0.97226227534773701 0
		 1.9292208972374565e-16 0.97226227534773679 -0.23389328322044967 0 1.0000000000000002 -2.7755575615628918e-16 0 0
		 -1.954230190027587e-16 6.5771539320899013 -4.2905898943319301 1;
	setAttr ".radi" 0.08215515705011954;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_UpperJaw_End" -p "Frank_JT_UpperJaw";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.4533180487879007 2.7122404864193808e-15 -1.0750024694580877e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -34.721315558661388 ;
	setAttr ".bps" -type "matrix" -1.536908807658789e-16 -0.74603076225576337 -0.66591148193140848 0
		 1.2821254233756903e-16 0.66591148193140837 -0.74603076225576381 0 1.0000000000000002 -2.7755575615628918e-16 0 0
		 -3.8037857555844932e-16 6.2372326020953643 -5.7035962072503885 1;
	setAttr ".radi" 0.08215515705011954;
	setAttr ".liw" yes;
createNode parentConstraint -n "Frank_JT_UpperJaw_parentConstraint1" -p "Frank_JT_UpperJaw";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_UpJawW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.8886090522101181e-31 1.7763568394002505e-15 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -90 76.473605405944809 -90.000000000000014 ;
	setAttr ".lr" -type "double3" 2.9909572660363558e-14 2.1057231856681641e-14 1.9083328088781107e-14 ;
	setAttr ".rst" -type "double3" -0.12406415496461598 0.67216546112600639 -7.236775793839726e-17 ;
	setAttr ".rsrr" -type "double3" 2.9909572660363558e-14 2.1057231856681641e-14 1.9083328088781107e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Frank_JT_Head_parentConstraint1" -p "Frank_JT_Head";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_HeadW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.4651903288156619e-31 -8.8817841970012523e-16 
		-2.2204460492503131e-15 ;
	setAttr ".tg[0].tor" -type "double3" -90 41.752289847283549 -90.000000000000014 ;
	setAttr ".lr" -type "double3" -5.7675208270206058e-15 1.7856842199806218e-14 -8.9875476141036874e-31 ;
	setAttr ".rst" -type "double3" 0.82956954297453089 0 -7.8685987383910278e-17 ;
	setAttr ".rsrr" -type "double3" -5.7675208270206058e-15 1.7856842199806218e-14 -8.9875476141036874e-31 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Frank_JT_Neck_parentConstraint1" -p "Frank_JT_Neck";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_NeckW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7117093616972281e-31 -1.7763568394002505e-15 
		-1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 90 86.617162110225976 90 ;
	setAttr ".lr" -type "double3" -2.7624950164681332e-15 6.3727601030944692e-15 -1.5902773407317576e-15 ;
	setAttr ".rst" -type "double3" 1.4266859291908407 -8.8817841970012523e-16 -1.231900761892107e-16 ;
	setAttr ".rsrr" -type "double3" -2.7624950164681332e-15 6.3727601030944692e-15 -1.5902773407317576e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Frank_JT_LArm_Shoulder" -p "Frank_JT_chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 147.21693795352388 -5.7648679249464454 -94.614329578109562 ;
	setAttr ".bps" -type "matrix" 0.10044624683868958 -0.98305809907475405 0.15332098792909027 0
		 0.53872125603975485 0.18329422752375762 0.82230324968798363 0 -0.83647472154690417 -2.5355419942893361e-16 0.5480055111155635 0
		 2.3619253474156472 5.5196917409181427 -1.7165399885634156 1;
	setAttr ".radi" 0.078417126457069344;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LArm_Elbow" -p "Frank_JT_LArm_Shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.4897549867961306 161.05755812981968 95.93056288639967 ;
	setAttr ".bps" -type "matrix" -0.22546846845814333 -0.26851204474048973 -0.93651761946074485 0
		 -0.062849047364730862 0.96327632682905739 -0.26105308926742216 0 0.97222115126985653 6.411788668015326e-16 -0.23406416433002925 0
		 2.5030305301244948 4.1387084085481032 -1.5011572670011164 1;
	setAttr ".radi" 0.111139623218905;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LArm_Wrist" -p "Frank_JT_LArm_Elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 37.787105557520185 -6.0767562769089665 -66.6492707599905 ;
	setAttr ".bps" -type "matrix" 0.071433013881689211 -0.98523962533820231 -0.15556415136919219 0
		 0.41113617047663831 0.17118084198717606 -0.89535700626195247 0 0.90877080380785946 -1.0675080913394488e-16 0.41729561002533555 0
		 2.0668484304466404 3.6192559624272689 -3.3129060424957579 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LArm_Finger_Base" -p "Frank_JT_LArm_Wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.48865648332582751 -5.3067717488526658e-16 -2.2059094205333722e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 124.34612157813206 -16.674442668276537 -20.949808397489146 ;
	setAttr ".bps" -type "matrix" 0.18384187111993489 -0.94005135360420855 0.28723791360128009 0
		 0.50675694225792822 0.34103292009261388 0.79176634740717533 0 -0.84225861105512989 2.2422873844802989e-16 0.53907367966121644 0
		 2.1017546358034314 3.1378122318762469 -3.3889234736353937 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LArm_Finger_Mid" -p "Frank_JT_LArm_Finger_Base";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.48519113885542603 -2.1998946259863143e-16 -3.2288837576725046e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.3324547793233661 -12.559269051420742 46.829114040112657 ;
	setAttr ".bps" -type "matrix" 0.30036446814621293 -0.38500192022235258 0.87267101917065182 0
		 0.12529951330801564 0.92291577157674642 0.36404190766953348 0 -0.94555868048472669 5.6486080353978348e-16 0.32545165809991328 0
		 2.1909530826214252 2.6817076450384363 -3.2495581832127325 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LArm_Finger_End" -p "Frank_JT_LArm_Finger_Mid";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.49361722076433434 3.8971471217139941e-16 1.4409260942954551e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 71.007059203498883 22.643859472668062 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -3.2594221893540708e-16 -2.1260770921571748e-14 0
		 2.2204460492503131e-16 1 -8.8817841970012523e-16 0 2.1371793224034263e-14 7.9445754865149666e-16 1 0
		 2.3392181566041161 2.4916640671893471 -2.8187927400881359 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode parentConstraint -n "Frank_JT_LArm_Wrist_parentConstraint1" -p "Frank_JT_LArm_Wrist";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_LArm_WristW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -3.5527136788005009e-15 -2.2204460492503131e-15 ;
	setAttr ".tg[0].tor" -type "double3" -65.011366097907313 8.9495166385691132 -85.853129464383571 ;
	setAttr ".lr" -type "double3" 4.770832022195328e-15 4.2937488199757462e-14 1.4232982199549234e-13 ;
	setAttr ".rst" -type "double3" 1.9345591987237385 0 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 4.770832022195328e-15 4.2937488199757462e-14 1.4232982199549234e-13 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Frank_JT_LArm_Elbow_parentConstraint1" -p "Frank_JT_LArm_Elbow";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_LArm_ElbowW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-16 -2.6645352591003757e-15 
		-1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 48.12011471593182 110.52527352670786 49.97995713641712 ;
	setAttr ".lr" -type "double3" -4.7708320221952783e-15 -1.1131941385122309e-14 3.1805546814635174e-14 ;
	setAttr ".rst" -type "double3" 1.404783027238989 -1.3322676295501878e-15 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952783e-15 -1.1131941385122309e-14 
		3.1805546814635174e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Frank_JT_LArm_Shoulder_parentConstraint1" -p "Frank_JT_LArm_Shoulder";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_LArm_ShoulderW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 -1.7763568394002505e-15 
		-1.5543122344752192e-15 ;
	setAttr ".tg[0].tor" -type "double3" 56.319419792261208 -8.8194320256410137 -84.16591730835745 ;
	setAttr ".lr" -type "double3" -1.2722218725854067e-14 -2.2263882770244617e-14 2.4717875269080888e-30 ;
	setAttr ".rst" -type "double3" 0.13796152731986044 -0.5654201313779037 2.3619253474156467 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854067e-14 -2.2263882770244617e-14 
		2.4717875269080888e-30 ;
	setAttr -k on ".w0";
createNode joint -n "Frank_JT_RArm_Shoulder" -p "Frank_JT_chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -147.21755107749669 5.7646728175972353 -94.614240395020687 ;
	setAttr ".bps" -type "matrix" -0.10044285879464587 -0.98305867567845218 0.15331951046910597 0
		 -0.53871249006411204 0.18329113501020014 0.82230968185690045 0 -0.8364807739369049 2.2523115981634835e-16 -0.54799627264600725 0
		 -2.4369376434632155 5.5196899999999989 -1.7165400000000006 1;
	setAttr ".radi" 0.078417126457069344;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_RArm_Elbow" -p "Frank_JT_RArm_Shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 174.5104391986537 -18.941910941036813 -84.069390845494681 ;
	setAttr ".bps" -type "matrix" 0.22546738117721876 -0.26851077801024453 -0.93651824441247289 0
		 0.062848424754119059 0.96327667992759625 -0.26105193623796946 0 0.97222144366960639 2.1121510063935742e-16 0.23406294979980807 0
		 -2.5780376434632153 4.138709999999997 -1.5011600000000003 1;
	setAttr ".radi" 0.111139623218905;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_RArm_Wrist" -p "Frank_JT_RArm_Elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -37.785403071835631 6.0757729936915057 -66.650112931288731 ;
	setAttr ".bps" -type "matrix" -0.071419646009903942 -0.98524322554348176 -0.15554748691153955 0
		 -0.41111050045657938 0.17116011953920696 -0.89537275471932143 0 0.90878346737721949 -8.3812191638768428e-17 -0.41726803067313811 0
		 -2.1418576434632213 3.6192599999999953 -3.31291 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_RArm_Finger_Base" -p "Frank_JT_RArm_Wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.48866106106380014 -4.3177747552300196e-16 -5.0482338252038611e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -124.34639043631709 16.674206136931961 -20.948563177582042 ;
	setAttr ".bps" -type "matrix" -0.18384717373579468 -0.94005264507730446 0.28723029295762686 0
		 -0.50677754515084028 0.34102936014830648 0.79175469385897834 0 -0.84224505723705434 -1.7674651784859573e-16 -0.53909485580902328 0
		 -2.1767576434632221 3.1378099999999964 -3.3889199999999997 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_RArm_Finger_Mid" -p "Frank_JT_RArm_Finger_Base";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.48518559294356667 1.8349587340188661e-16 -2.7580861294439118e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.3329695735742533 12.560186505251673 46.828807228419002 ;
	setAttr ".bps" -type "matrix" -0.30036962283123325 -0.38500874633489918 0.87266623340533367 0
		 -0.12530427185359888 0.92291292397800406 0.36404748894836492 0 -0.94555641245536615 -1.7176988059211831e-16 -0.32545824749810531 0
		 -2.2659576434632225 2.6817099999999963 -3.2495599999999989 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_RArm_Finger_End" -p "Frank_JT_RArm_Finger_Mid";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.49362514958214926 3.5430677028915758e-16 7.7250846991313528e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999940412573 71.006660041985043 -157.35571738315326 ;
	setAttr ".bps" -type "matrix" 1 3.5796445488825212e-09 2.1139332506692199e-09 0 -3.579644419247109e-09 0.99999999999999989 4.7751709462539327e-16 0
		 -2.1139331951580687e-09 -8.3227449573299663e-16 1 0 -2.4142276434632239 2.4916599999999964 -2.8187900000000004 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode parentConstraint -n "Frank_JT_RArm_Wrist_parentConstraint1" -p "Frank_JT_RArm_Wrist";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_RArm_WristW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-15 -2.6645352591003757e-15 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -114.98679812066395 8.9485500695332423 -94.146082105196001 ;
	setAttr ".lr" -type "double3" 3.9756933518293942e-14 3.3395824155366947e-14 -6.4406232299636203e-14 ;
	setAttr ".rst" -type "double3" 1.9345592152735966 0 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 3.9756933518293942e-14 3.3395824155366947e-14 -6.4406232299636203e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Frank_JT_RArm_Elbow_parentConstraint1" -p "Frank_JT_RArm_Elbow";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_RArm_ElbowW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 -3.5527136788005009e-15 
		-1.9984014443252818e-15 ;
	setAttr ".tg[0].tor" -type "double3" -48.120136702257817 69.474828598466473 -49.97996009143133 ;
	setAttr ".lr" -type "double3" -2.0673605429512861e-14 -4.7708320221952673e-15 4.4527765540489235e-14 ;
	setAttr ".rst" -type "double3" 1.4047788134791919 -1.3322676295501878e-15 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-14 -4.7708320221952673e-15 
		4.4527765540489235e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Frank_JT_RArm_Shoulder_parentConstraint1" -p "Frank_JT_RArm_Shoulder";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_RArm_ShoulderW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002505e-15 -1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 123.67992764205492 -8.8193463605630598 -95.833883867574954 ;
	setAttr ".lr" -type "double3" -1.1131941385122309e-14 4.7708320221952752e-15 -4.6346016129526668e-31 ;
	setAttr ".rst" -type "double3" 0.13796166775071073 -0.56542186666057859 -2.4369376434632151 ;
	setAttr ".rsrr" -type "double3" -1.1131941385122309e-14 4.7708320221952752e-15 -4.6346016129526668e-31 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Frank_JT_Shoulder_parentConstraint1" -p "Frank_JT_chest";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_ShoulderW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.0346161798291198e-31 -2.6645352591003757e-15 
		-1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" -90 85.74970618969877 -90.000000000000014 ;
	setAttr ".lr" -type "double3" 9.6631376414275277e-16 1.5997373977020744e-14 1.9083328088781097e-14 ;
	setAttr ".rst" -type "double3" 3.8138178132593161 0 -4.2341883480060515e-16 ;
	setAttr ".rsrr" -type "double3" 9.6631376414275277e-16 1.5997373977020744e-14 1.9083328088781097e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Frank_JT_TailBase" -p "Frank_JT_Body";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999986 0 164.61815951592149 ;
	setAttr ".bps" -type "matrix" -6.287234191642895e-17 -0.34570535882735676 0.93834311681711036 0
		 2.5329276006928115e-15 0.93834311681710991 0.34570535882735653 0 -1.0000000000000002 2.4760099121852684e-15 8.0995679432646685e-16 0
		 -7.6420900193285519e-31 3.2518383785856901 3.3766278977921478 1;
	setAttr ".radi" 0.10576139192765069;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_TailMid" -p "|Frank_JT_Body|Frank_JT_TailBase";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 5.8894240116479351 ;
	setAttr ".bps" -type "matrix" 1.9736049578457682e-16 -0.247598267510903 0.96886278591222597 0
		 2.5260095004637582e-15 0.96886278591222563 0.24759826751090275 0 -1.0000000000000002 2.4760099121852684e-15 8.0995679432646685e-16 0
		 3.4374134457148947e-16 2.631029357612007 5.0616809547207282 1;
	setAttr ".radi" 0.063585105293762822;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_TailBase" -p "Frank_JT_TailMid";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.176907074638978 -5.2718271718046663e-17 -3.972841972904782e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999986 2.8249000307521015e-30 159.64028188828618 ;
	setAttr ".bps" -type "matrix" 6.9380079415286319e-16 0.56920997883030866 -0.8221921916437791 0
		 9.3955212934014829e-17 0.82219219164377844 0.56920997883030844 0 1.0000000000000002 -5.4968700494733428e-16 5.2365137222287286e-16 0
		 6.1574472804366179e-16 2.3396292049100711 6.2019424218152563 1;
	setAttr ".radi" 0.063585105293762822;
	setAttr ".liw" yes;
createNode parentConstraint -n "Frank_JT_RArm_TailMid_parentConstraint1" -p "Frank_JT_TailMid";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_Tail_EndW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.0429121392576855e-30 1.3322676295501878e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999815 -75.664564580479862 -89.999999999999943 ;
	setAttr ".lr" -type "double3" -1.5660049428253512e-13 -1.3446244290650502e-13 3.1805546814635357e-14 ;
	setAttr ".rst" -type "double3" 1.7957749427995298 1.7763568394002505e-15 -4.5664592078013293e-16 ;
	setAttr ".rsrr" -type "double3" -1.5660049428253512e-13 -1.3446244290650502e-13 
		3.1805546814635357e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Frank_JT_RArm_TailBase_parentConstraint1" -p "|Frank_JT_Body|Frank_JT_TailBase";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_Tail_BaseW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6492454449206382e-31 -2.6645352591003757e-15 
		-1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999858 -69.775140568831873 -90.000000000000014 ;
	setAttr ".lr" -type "double3" -4.4466283677750641e-15 1.8728639636763261e-14 -4.7708320221952742e-14 ;
	setAttr ".rst" -type "double3" -1.903936474231317 0.59903671428453187 1.1161975819235065e-16 ;
	setAttr ".rsrr" -type "double3" -4.4466283677750641e-15 1.8728639636763261e-14 -4.7708320221952742e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Frank_JT_LLeg_Thigh" -p "Frank_JT_Body";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.050274250484026228 0.09752146371128026 2.4697304115629732 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 11.592631824458538 174.21535829955062 28.227052997412251 ;
	setAttr ".bps" -type "matrix" -0.10078961290172518 -0.8929479275773653 0.43873164071720272 0
		 -0.19992865192334242 0.45015997004985686 0.87027842412921341 0 -0.97461273748665711 4.092872533908046e-16 -0.22389732452346237 0
		 2.4697304115629737 3.9233256869858084 1.5775486941541121 1;
	setAttr ".radi" 0.14858474118362636;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_Knee" -p "Frank_JT_LLeg_Thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.4546066612634725 2.6514344474473322e-17 -9.0077760215760326e-16 ;
	setAttr ".r" -type "double3" 5.2494471941756767e-29 -3.4260395767372548e-15 5.3588748174014316e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 174.09722167398556 -3.6976956608343734 -58.709121765156112 ;
	setAttr ".bps" -type "matrix" 0.055397333746350461 -0.84669610818959207 -0.52918506761849737 0
		 0.088154019501858277 0.53207678052758323 -0.84209451278883662 0 0.99456523378784034 2.7374199043809477e-16 0.10411530022306301 0
		 2.2223315563482333 1.7314897557929947 2.6544623019656104 1;
	setAttr ".radi" 0.10496702773143896;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_Foot" -p "Frank_JT_LLeg_Knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.795624909678063 -1.4293773845549981e-15 -1.8602349829445004e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.066417779448245 -33.68258027303127 45.254557098458712 ;
	setAttr ".bps" -type "matrix" 0.63612775129841137 -0.18151573265482893 -0.7499290118583275 0
		 0.11741773343557188 0.98338804080524578 -0.1384233978634839 0 0.76259724619413605 2.8156787448614705e-16 0.64687358896241887 0
		 2.3218043887529274 0.21114113300029036 1.7042444127201675 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_LToe_base" -p "Frank_JT_LLeg_Foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.76778628708554608 4.5956587490440075e-16 -4.2471223454945964e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.8866292037691261 24.372658095173026 24.486023921806641 ;
	setAttr ".bps" -type "matrix" 0.25695167909927397 0.22079332807809576 -0.94086457095814924 0
		 -0.058168786125150085 0.97532061716965535 0.21299315961910195 0 0.96467208259013626 7.610349830609916e-15 0.26345355012071797 0
		 2.8102145530344123 0.071775842577627091 1.1284592011277295 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_LToe_end" -p "Frank_JT_LLeg_LToe_base";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.67342407832757523 7.498379477533941e-17 5.9243243629454175e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.1429074820012071 14.4027226843232 -32.647765634070637 ;
	setAttr ".bps" -type "matrix" -5.5511151231257827e-15 -0.32955681658703684 -0.94413574481692941 0
		 9.8809849191638932e-15 0.94413574481692886 -0.329556816587037 0 1.0000000000000002 -1.1310254793368677e-14 -2.0539125955565396e-15 0
		 2.9832520007065644 0.22046338603949675 0.49485834459916844 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_RToe_base" -p "Frank_JT_LLeg_Foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.48193523871086907 0.088956570872219171 -0.54719304293396587 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.0426718354074122e-15 40.306296513802671 10.458059402806466 ;
	setAttr ".bps" -type "matrix" 1.7763568394002505e-15 6.5052844696349395e-16 -1.0000000000000002 0
		 -1.0130785099704553e-15 0.99999999999999956 5.5511151231257827e-16 0 1 9.0861227609059505e-16 1.609823385706477e-15 0
		 2.2215339396735203 0.21114113300029153 0.97654879703364039 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_RToe_end" -p "Frank_JT_LLeg_RToe_base";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.75159532764086556 3.4827307230439149e-17 4.1825721348124537e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -14.349332042947061 ;
	setAttr ".bps" -type "matrix" 1.9720138497417241e-15 -0.24783324998263115 -0.96880270447756645 0
		 -5.4123291167003983e-16 0.96880270447756578 -0.24783324998263143 0 1 9.0861227609059505e-16 1.609823385706477e-15 0
		 2.2215339396735221 0.21114113300029205 0.22495346939277461 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode orientConstraint -n "Frank_JT_LLeg_Foot_orientConstraint1" -p "Frank_JT_LLeg_Foot";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_LLegW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.3275387628247102e-13 -49.693703486197222 10.458059402806386 ;
	setAttr ".o" -type "double3" -12.078465169854876 48.584229053610485 -15.92582064407847 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 -5.7647553601526251e-15 -4.7708320221952752e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Frank_JT_LLeg_Knee";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "Frank_JT_LLeg_Thigh1" -p "Frank_JT_Body";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.050272801064717987 0.097525730619827833 -2.4697299999999998 ;
	setAttr ".r" -type "double3" -2.0373749843559428 -4.3293502984438765 -18.507975081782593 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 11.592631824458486 174.21535829955062 28.227052997412251 ;
	setAttr ".bps" -type "matrix" -0.10078961290172521 -0.89294792757736563 0.43873164071720278 0
		 -0.19992865192334164 0.45015997004985681 0.87027842412921363 0 -0.97461273748665755 7.9786531200960949e-16 -0.22389732452346164 0
		 -2.4697300000000002 3.9233299999999995 1.5775500000000005 1;
	setAttr ".radi" 0.14858474118362636;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_Knee1" -p "Frank_JT_LLeg_Thigh1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.4047381265540468 -0.098929439510922812 -0.48223645900676138 ;
	setAttr ".r" -type "double3" -0.77489995688432756 -1.7668784585300972 -6.8132193951948166 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 174.09722167398544 -3.6976956608343343 -58.709121765156141 ;
	setAttr ".bps" -type "matrix" 0.055397333746350558 -0.84669610818959207 -0.52918506761849804 0
		 0.088154019501856112 0.53207678052758411 -0.84209451278883729 0 0.99456523378784123 1.4909133776786024e-15 0.10411530022306119 0
		 -2.2223299999999999 1.73149 2.6544599999999994 1;
	setAttr ".radi" 0.10496702773143896;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_Foot1" -p "Frank_JT_LLeg_Knee1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.7846054435546375 -0.017536033575973997 -0.19786184438283594 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.0664177794484422 -33.682580273031348 45.254557098458626 ;
	setAttr ".bps" -type "matrix" 0.63612775129841159 -0.18151573265482873 -0.74992901185832828 0
		 0.11741773343557313 0.98338804080524633 -0.13842339786348309 0 0.76259724619413649 -1.3778246405330271e-15 0.64687358896241942 0
		 -2.3218000000000001 0.21114099999999958 1.70424 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_LToe_base1" -p "Frank_JT_LLeg_Foot1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.14639994782071719 -0.11469664214986353 -0.74491699606645867 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.8866292037719239 24.372658095173062 24.486023921806595 ;
	setAttr ".bps" -type "matrix" 0.25695167909927397 0.22079332807809621 -0.94086457095815001 0
		 -0.058168786125101429 0.97532061716965579 0.21299315961911539 0 0.96467208259013981 -4.1549511585479964e-14 0.26345355012070731 0
		 -2.8102100000000001 0.071775799999999695 1.1284600000000002 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_LToe_end1" -p "Frank_JT_LLeg_LToe_base1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.58449989706750038 0.020130326499324669 -0.33385155343498374 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.1429074820060521 14.402722684321636 -32.647765634071291 ;
	setAttr ".bps" -type "matrix" -5.6621374255882984e-15 -0.32955681658703717 -0.94413574481693008 0
		 -3.0767055569924651e-14 0.9441357448169293 -0.32955681658703784 0 1.0000000000000009 2.7170105844900959e-14 -1.5543122344752192e-14 0
		 -2.98325 0.22046299999999966 0.49485799999999969 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_RToe_base1" -p "Frank_JT_LLeg_Foot1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.60950112219088926 0.11250293694626026 -0.3942584629497653 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.082060235620021e-13 40.306296513802685 10.458059402806384 ;
	setAttr ".bps" -type "matrix" 1.7208456881689926e-15 8.3576721895119432e-16 -1.0000000000000009 0
		 1.101636818200095e-15 1.0000000000000002 4.2082222143748364e-16 0 1.0000000000000007 -1.0646030644167275e-15 1.4988010832439613e-15 0
		 -2.2215300000000004 0.21114099999999961 0.97654899999999989 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode joint -n "Frank_JT_LLeg_RToe_end1" -p "Frank_JT_LLeg_RToe_base1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.75159599999999915 -6.6613381477509392e-16 -1.3322676295501878e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.0913097924695719e-06 -2.6356017673954888e-14 -14.349332042947061 ;
	setAttr ".bps" -type "matrix" 1.3941377237316231e-15 -0.24783324998263112 -0.96880270447756711 0
		 3.650024305154487e-08 0.96880270447756589 -0.24783324998263151 0 1 -3.5361533799877719e-08 9.0459749892201218e-09 0
		 -2.2215300000000004 0.21114099999999958 0.22495300000000007 1;
	setAttr ".radi" 0.0517;
	setAttr ".liw" yes;
createNode orientConstraint -n "Frank_JT_LLeg_Foot_orientConstraint2" -p "Frank_JT_LLeg_Foot1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_LLegW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 0 -1.1102230246251565e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tr" -type "double3" -3.0215269473903408e-14 0 0 ;
	setAttr ".tg[0].tpm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".lr" -type "double3" -1.3275387628247102e-13 -49.693703486197222 10.458059402806386 ;
	setAttr ".cpim" -type "matrix" 0.055397333746350363 0.088154019501858277 0.99456523378784012 -0
		 -0.84669610818959251 0.53207678052758334 3.6082248300317588e-16 0 -0.52918506761849726 -0.84209451278883618 0.10411530022306299 -0
		 2.7476362074344305 1.1181151847533171 -2.4866238433935286 1;
	setAttr ".cjo" -type "double3" 7.066417779448245 -33.68258027303127 45.254557098458712 ;
	setAttr ".o" -type "double3" -12.078465169854876 48.584229053610485 -15.92582064407847 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 -5.7647553601526251e-15 -4.7708320221952752e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Frank_JT_LLeg_Foot1_orientConstraint1" -p "Frank_JT_LLeg_Foot1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_LLeg1W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -11.376284516576057 -50.063722564577546 9.3985395695669247 ;
	setAttr ".o" -type "double3" -12.078465169854967 48.584229053610464 -15.925820644078588 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317588e-15 1.2970699560343405e-14 1.5902773407317588e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "Frank_JT_LLeg_Knee1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Frank_JT_Body_parentConstraint1" -p "Frank_JT_Body";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_BodyW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -4.4408920985006262e-16 0 ;
	setAttr ".tg[0].tor" -type "double3" 90 54.393300084753406 89.999999999999986 ;
	setAttr ".lr" -type "double3" -3.180554681463516e-15 7.9513867036587888e-15 -3.180554681463516e-15 ;
	setAttr ".rst" -type "double3" 0 3.8733081254488781 1.479895329214544 ;
	setAttr ".rsrr" -type "double3" -3.180554681463516e-15 7.9513867036587888e-15 -3.180554681463516e-15 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Frank_LLeg_IK";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode parentConstraint -n "Frank_LLeg_IK_parentConstraint1" -p "Frank_LLeg_IK";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_LLegW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -82.951804702677904 31.950409651979925 -86.256607445092001 ;
	setAttr ".lr" -type "double3" -82.951804702677904 31.950409651979925 -86.256607445092001 ;
	setAttr ".rst" -type "double3" 2.3218043887529278 0.2111411330002908 1.7042444127201675 ;
	setAttr ".rsrr" -type "double3" -82.951804702677904 31.950409651979925 -86.256607445092001 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Frank_RLeg_IK";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle1_parentConstraint1" -p "Frank_RLeg_IK";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Frank_CTRL_LLeg1W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -82.951804702678032 31.950409651979957 -86.256607445092001 ;
	setAttr ".lr" -type "double3" -82.951804702678032 31.950409651979957 -86.256607445092015 ;
	setAttr ".rst" -type "double3" -2.3218 0.21114100000000002 1.70424 ;
	setAttr ".rsrr" -type "double3" -82.951804702678032 31.950409651979957 -86.256607445092015 ;
	setAttr -k on ".w0";
createNode transform -n "Frank_CTRL_Whole";
createNode nurbsCurve -n "Frank_CTRL_WholeShape" -p "Frank_CTRL_Whole";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.180462954345173 3.1721186875701232e-16 -5.180462954345165
		-8.3584105797840124e-16 4.4860532694188136e-16 -7.3262809694063291
		-5.1804629543451677 3.1721186875701252e-16 -5.1804629543451677
		-7.3262809694063291 1.2999460052861455e-31 -2.1229729358558215e-15
		-5.1804629543451695 -3.1721186875701242e-16 5.1804629543451659
		-2.2075514366485634e-15 -4.4860532694188146e-16 7.3262809694063309
		5.180462954345165 -3.1721186875701257e-16 5.1804629543451686
		7.3262809694063291 -2.4094679621035747e-31 3.9349598002969347e-15
		5.180462954345173 3.1721186875701232e-16 -5.180462954345165
		-8.3584105797840124e-16 4.4860532694188136e-16 -7.3262809694063291
		-5.1804629543451677 3.1721186875701252e-16 -5.1804629543451677
		;
createNode transform -n "Frank_CTRL_Body" -p "Frank_CTRL_Whole";
	setAttr ".rp" -type "double3" 0 3.8733081254488786 1.479895329214544 ;
	setAttr ".sp" -type "double3" 0 3.8733081254488786 1.479895329214544 ;
createNode nurbsCurve -n "Frank_CTRL_BodyShape" -p "Frank_CTRL_Body";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.0009827080297025 2.1831627719380813 0.8276599886829441
		0.0087824243362035377 1.3714729034668824 0.53297576906480715
		-2.9834178593572913 2.1831627719380808 0.82765998868294388
		-4.2228277981997611 4.1427554608420794 1.5390906283023809
		-2.9834178593572922 6.1023481497460796 2.2505212679218181
		0.0087824243362027449 6.9140380182172798 2.5452054875399552
		3.0009827080296976 6.1023481497460814 2.2505212679218185
		4.2403926468721682 4.142755460842082 1.5390906283023815
		3.0009827080297025 2.1831627719380813 0.8276599886829441
		0.0087824243362035377 1.3714729034668824 0.53297576906480715
		-2.9834178593572913 2.1831627719380808 0.82765998868294388
		;
createNode transform -n "Frank_CTRL_Tail_Base" -p "Frank_CTRL_Body";
	setAttr ".rp" -type "double3" -5.6699377562760224e-31 3.2518383785856928 3.3766278977921487 ;
	setAttr ".sp" -type "double3" -5.6699377562760224e-31 3.2518383785856928 3.3766278977921487 ;
createNode nurbsCurve -n "Frank_CTRL_Tail_BaseShape" -p "Frank_CTRL_Tail_Base";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5764291434397497 2.2518574327264358 3.0681778602411045
		0.0087824243362037667 1.7189251056399344 2.9137895485450271
		-1.5588642947673401 2.2518574327264349 3.0681778602411041
		-2.2082048268297143 3.5384698846057177 3.4409042162096575
		-1.5588642947673406 4.8250823364850017 3.8136305721782109
		0.0087824243362033521 5.3580146635715025 3.9680188838742882
		1.5764291434397473 4.8250823364850017 3.8136305721782113
		2.2257696755021223 3.5384698846057194 3.4409042162096579
		1.5764291434397497 2.2518574327264358 3.0681778602411045
		0.0087824243362037667 1.7189251056399344 2.9137895485450271
		-1.5588642947673401 2.2518574327264349 3.0681778602411041
		;
createNode transform -n "Frank_CTRL_Tail_End" -p "Frank_CTRL_Tail_Base";
	setAttr ".rp" -type "double3" 3.4374134457148523e-16 2.6310293576120056 5.0616809547207282 ;
	setAttr ".sp" -type "double3" 3.4374134457148523e-16 2.6310293576120056 5.0616809547207282 ;
createNode nurbsCurve -n "Frank_CTRL_Tail_EndShape" -p "Frank_CTRL_Tail_End";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.87598495095304163 2.025364397379553 4.8951971931028897
		0.0087824243362038795 1.7305529102420112 4.8097915131423514
		-0.85842010228063259 2.025364397379553 4.8951971931028897
		-1.2176271501295417 2.7371022879703863 5.1013847439673183
		-0.85842010228063292 3.4488401785612202 5.3075722948317461
		0.0087824243362036505 3.7436516656987617 5.3929779747922852
		0.8759849509530403 3.4488401785612202 5.307572294831747
		1.2351919988019497 2.7371022879703872 5.1013847439673183
		0.87598495095304163 2.025364397379553 4.8951971931028897
		0.0087824243362038795 1.7305529102420112 4.8097915131423514
		-0.85842010228063259 2.025364397379553 4.8951971931028897
		;
createNode transform -n "Frank_CTRL_Shoulder" -p "Frank_CTRL_Body";
	setAttr ".rp" -type "double3" 2.9582283945787943e-31 6.0937816827224491 -1.620863206076931 ;
	setAttr ".sp" -type "double3" 2.9582283945787943e-31 6.0937816827224491 -1.620863206076931 ;
createNode nurbsCurve -n "Frank_CTRL_ShoulderShape" -p "Frank_CTRL_Shoulder";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1794619692902053 4.0063779629232226 -1.8843717380554721
		0.0087824243362036574 3.1487416569283981 -1.9850653252906365
		-2.1618971206177946 4.0063779629232217 -1.8843717380554721
		-3.0610220277036007 6.0768951644394917 -1.6412759141083408
		-2.1618971206177955 8.1474123659557627 -1.3981800901612091
		0.0087824243362030693 9.0050486719505898 -1.2974865029260447
		2.1794619692902013 8.1474123659557645 -1.3981800901612091
		3.0785868763760087 6.0768951644394944 -1.6412759141083404
		2.1794619692902053 4.0063779629232226 -1.8843717380554721
		0.0087824243362036574 3.1487416569283981 -1.9850653252906365
		-2.1618971206177946 4.0063779629232217 -1.8843717380554721
		;
createNode transform -n "Frank_CTRL_LArm_Shoulder" -p "Frank_CTRL_Shoulder";
	setAttr ".rp" -type "double3" 2.3619253474156463 5.5196917409181454 -1.7165399885634143 ;
	setAttr ".sp" -type "double3" 2.3619253474156463 5.5196917409181454 -1.7165399885634143 ;
createNode nurbsCurve -n "Frank_CTRL_LArm_ShoulderShape" -p "Frank_CTRL_LArm_Shoulder";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0873782945330182 6.4513118801345897 -2.6329500646277357
		1.9898739387273663 5.345963996435664 -3.1171766524136686
		2.1152646939187929 4.2154940300454236 -2.7023378339314221
		2.3900983563123641 3.7221159554198131 -1.6314405628490671
		2.6533810938745952 4.1548439572969897 -0.53180193665830955
		2.7508854496802471 5.2601918409959154 -0.047575348872376466
		2.6254946944888204 6.390661807386155 -0.46241416735462337
		2.3506610320952492 6.8840398820117663 -1.5333114384369779
		2.0873782945330182 6.4513118801345897 -2.6329500646277357
		1.9898739387273663 5.345963996435664 -3.1171766524136686
		2.1152646939187929 4.2154940300454236 -2.7023378339314221
		;
createNode transform -n "Frank_CTRL_LArm_Elbow" -p "Frank_CTRL_LArm_Shoulder";
	setAttr ".rp" -type "double3" 2.5030305301244944 4.1387084085481067 -1.5011572670011146 ;
	setAttr ".sp" -type "double3" 2.5030305301244944 4.1387084085481067 -1.5011572670011146 ;
createNode nurbsCurve -n "Frank_CTRL_LArm_ElbowShape" -p "Frank_CTRL_LArm_Elbow";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.0102379097310323 4.5099863144509023 -2.2318710260555017
		2.3589547149841836 4.7011560411112159 -2.4222132645345611
		1.7076715202373356 4.5099863144509031 -2.2318710260555017
		1.4379011880275132 4.0484617676324177 -1.7723442124269038
		1.7076715202373354 3.5869372208139327 -1.3128173987983054
		2.3589547149841832 3.3957674941536196 -1.1224751603192458
		3.0102379097310314 3.5869372208139323 -1.3128173987983052
		3.2800082419408541 4.0484617676324177 -1.7723442124269031
		3.0102379097310323 4.5099863144509023 -2.2318710260555017
		2.3589547149841836 4.7011560411112159 -2.4222132645345611
		1.7076715202373356 4.5099863144509031 -2.2318710260555017
		;
createNode transform -n "Frank_CTRL_LArm_Wrist" -p "Frank_CTRL_LArm_Elbow";
	setAttr ".rp" -type "double3" 2.0668484304466399 3.619255962427272 -3.3129060424957557 ;
	setAttr ".sp" -type "double3" 2.0668484304466399 3.619255962427272 -3.3129060424957557 ;
createNode nurbsCurve -n "Frank_CTRL_LArm_WristShape" -p "Frank_CTRL_LArm_Wrist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.7263842852151869 3.8488620201001242 -3.6386990400097665
		2.1191540934133735 3.9874462897567158 -3.8485995167553324
		1.5119239016115604 3.8488620201001242 -3.638699040009767
		1.2604009206848337 3.5142899967636105 -3.1319544623020446
		1.5119239016115604 3.1797179734270968 -2.6252098845943221
		2.119154093413373 3.0411337037705048 -2.4153094078487567
		2.7263842852151861 3.1797179734270968 -2.6252098845943221
		2.977907266141913 3.5142899967636101 -3.1319544623020441
		2.7263842852151869 3.8488620201001242 -3.6386990400097665
		2.1191540934133735 3.9874462897567158 -3.8485995167553324
		1.5119239016115604 3.8488620201001242 -3.638699040009767
		;
createNode transform -n "Frank_CTRL_LArm_FingerCurl" -p "Frank_CTRL_LArm_Wrist";
	setAttr ".rp" -type "double3" 2.029417890347927 2.8614084765911256 -4.2431202536729504 ;
	setAttr ".sp" -type "double3" 2.029417890347927 2.8614084765911256 -4.2431202536729504 ;
createNode nurbsCurve -n "Frank_CTRL_LArm_FingerCurlShape" -p "Frank_CTRL_LArm_FingerCurl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0294178903479261 3.166004126469173 -4.377504904019391
		2.0294178903479261 2.8614084765911234 -4.4331688487676448
		2.0294178903479265 2.5568128267130765 -4.377504904019391
		2.0294178903479274 2.4306451774937439 -4.2431202536729691
		2.0294178903479279 2.5568128267130792 -4.1087356033265472
		2.0294178903479279 2.8614084765911287 -4.0530716585782933
		2.0294178903479274 3.1660041264691756 -4.1087356033265472
		2.0294178903479265 3.2921717756885083 -4.2431202536729691
		2.0294178903479261 3.166004126469173 -4.377504904019391
		2.0294178903479261 2.8614084765911234 -4.4331688487676448
		2.0294178903479265 2.5568128267130765 -4.377504904019391
		;
createNode transform -n "Frank_CTRL_RArm_Shoulder" -p "Frank_CTRL_Shoulder";
	setAttr ".rp" -type "double3" -2.436937643463216 5.5196900000000015 -1.7165399999999995 ;
	setAttr ".sp" -type "double3" -2.436937643463216 5.5196900000000015 -1.7165399999999995 ;
createNode nurbsCurve -n "Frank_CTRL_RArm_ShoulderShape" -p "Frank_CTRL_RArm_Shoulder";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.1486682933749104 6.4578986491150756 -2.6382219572730969
		-2.0328598669728248 5.3552790944600854 -3.1246322344921138
		-2.1207818939891525 4.2220807990259095 -2.7076097265767838
		-2.3609308434290623 3.7221159554198131 -1.6314405628490676
		-2.6126307177003061 4.1482571883165047 -0.52653004401294856
		-2.7284391441023921 5.2508767429714931 -0.040119766793931921
		-2.640517117086064 6.384075038405669 -0.45714227470926216
		-2.4003681676461541 6.8840398820117663 -1.5333114384369779
		-2.1486682933749104 6.4578986491150756 -2.6382219572730969
		-2.0328598669728248 5.3552790944600854 -3.1246322344921138
		-2.1207818939891525 4.2220807990259095 -2.7076097265767838
		;
createNode transform -n "Frank_CTRL_RArm_Elbow" -p "Frank_CTRL_RArm_Shoulder";
	setAttr ".rp" -type "double3" -2.5780376434632162 4.1387100000000006 -1.5011599999999989 ;
	setAttr ".sp" -type "double3" -2.5780376434632162 4.1387100000000006 -1.5011599999999989 ;
createNode nurbsCurve -n "Frank_CTRL_RArm_ElbowShape" -p "Frank_CTRL_RArm_Elbow";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.6842189359663338 4.5099863144509023 -2.2318710260555017
		-2.3355021307131825 4.7011560411112159 -2.4222132645345611
		-2.9867853254600307 4.5099863144509031 -2.2318710260555017
		-3.2565556576698529 4.0484617676324177 -1.7723442124269038
		-2.9867853254600307 3.5869372208139327 -1.3128173987983054
		-2.3355021307131829 3.3957674941536196 -1.1224751603192458
		-1.6842189359663347 3.5869372208139323 -1.3128173987983052
		-1.414448603756512 4.0484617676324177 -1.7723442124269031
		-1.6842189359663338 4.5099863144509023 -2.2318710260555017
		-2.3355021307131825 4.7011560411112159 -2.4222132645345611
		-2.9867853254600307 4.5099863144509031 -2.2318710260555017
		;
createNode transform -n "Frank_CTRL_RArm_Wrist" -p "Frank_CTRL_RArm_Elbow";
	setAttr ".rp" -type "double3" -2.1418576434632226 3.6192599999999984 -3.3129099999999987 ;
	setAttr ".sp" -type "double3" -2.1418576434632226 3.6192599999999984 -3.3129099999999987 ;
createNode nurbsCurve -n "Frank_CTRL_RArm_WristShape" -p "Frank_CTRL_RArm_Wrist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.5092010482625686 3.8488620201001242 -3.6386990400097665
		-2.1164312400643821 3.9874462897567158 -3.8485995167553324
		-2.7236614318661951 3.8488620201001242 -3.638699040009767
		-2.9751844127929221 3.5142899967636105 -3.1319544623020446
		-2.7236614318661951 3.1797179734270968 -2.6252098845943221
		-2.1164312400643825 3.0411337037705048 -2.4153094078487567
		-1.5092010482625695 3.1797179734270968 -2.6252098845943221
		-1.2576780673358423 3.5142899967636101 -3.1319544623020441
		-1.5092010482625686 3.8488620201001242 -3.6386990400097665
		-2.1164312400643821 3.9874462897567158 -3.8485995167553324
		-2.7236614318661951 3.8488620201001242 -3.638699040009767
		;
createNode transform -n "Frank_CTRL_RArm_FingerCurl" -p "Frank_CTRL_RArm_Wrist";
	setAttr ".rp" -type "double3" -2.0219611537764033 2.8614084765911252 -4.2431202536729504 ;
	setAttr ".sp" -type "double3" -2.0219611537764033 2.8614084765911252 -4.2431202536729504 ;
createNode nurbsCurve -n "Frank_CTRL_RArm_FingerCurlShape" -p "Frank_CTRL_RArm_FingerCurl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.0219611537764042 3.166004126469173 -4.377504904019391
		-2.0219611537764042 2.861408476591123 -4.4331688487676448
		-2.0219611537764037 2.5568128267130761 -4.377504904019391
		-2.0219611537764028 2.4306451774937434 -4.2431202536729691
		-2.0219611537764024 2.5568128267130787 -4.1087356033265472
		-2.0219611537764024 2.8614084765911283 -4.0530716585782933
		-2.0219611537764028 3.1660041264691752 -4.1087356033265472
		-2.0219611537764037 3.2921717756885078 -4.2431202536729691
		-2.0219611537764042 3.166004126469173 -4.377504904019391
		-2.0219611537764042 2.861408476591123 -4.4331688487676448
		-2.0219611537764037 2.5568128267130761 -4.377504904019391
		;
createNode transform -n "Frank_CTRL_Neck" -p "Frank_CTRL_Shoulder";
	setAttr ".rp" -type "double3" -1.5386528587513624e-16 5.9880448466618006 -3.0436254708460719 ;
	setAttr ".sp" -type "double3" -1.5386528587513624e-16 5.9880448466618006 -3.0436254708460719 ;
createNode nurbsCurve -n "Frank_CTRL_NeckShape" -p "Frank_CTRL_Neck";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4380389911603424 7.5275723305296918 -3.0801959510167083
		-2.3202019633737274e-16 8.0566303406575255 -3.0453711850997585
		-1.4380389911603411 7.5275723305296935 -3.0801959510167078
		-2.0336942445202779 6.2503133071969597 -3.1642703731998756
		-1.4380389911603413 4.9730542838642249 -3.2483447953830433
		-6.1279176569151569e-16 4.4439962737363921 -3.2831695612999927
		1.4380389911603402 4.973054283864224 -3.2483447953830433
		2.0336942445202779 6.2503133071969579 -3.1642703731998756
		1.4380389911603424 7.5275723305296918 -3.0801959510167083
		-2.3202019633737274e-16 8.0566303406575255 -3.0453711850997585
		-1.4380389911603411 7.5275723305296935 -3.0801959510167078
		;
createNode transform -n "Frank_CTRL_Head" -p "Frank_CTRL_Neck";
	setAttr ".rp" -type "double3" -2.2830283295481772e-16 6.0369955576715046 -3.8717495282931536 ;
	setAttr ".sp" -type "double3" -2.2830283295481772e-16 6.0369955576715046 -3.8717495282931536 ;
createNode nurbsCurve -n "Frank_CTRL_HeadShape" -p "Frank_CTRL_Head";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3287435500205849 7.9549602530397685 -3.8094426377777326
		-2.1438593894386179e-16 8.4962431595883938 -3.7772646625089354
		-1.3287435500205835 7.9549602530397694 -3.8094426377777326
		-1.8791271493548827 6.6481877189693526 -3.8871271420813689
		-1.328743550020584 5.3414151848989349 -3.9648116463850052
		-5.662176833684604e-16 4.8001322783503095 -3.9969896216538028
		1.3287435500205826 5.3414151848989349 -3.9648116463850056
		1.8791271493548827 6.6481877189693508 -3.8871271420813689
		1.3287435500205849 7.9549602530397685 -3.8094426377777326
		-2.1438593894386179e-16 8.4962431595883938 -3.7772646625089354
		-1.3287435500205835 7.9549602530397694 -3.8094426377777326
		;
createNode transform -n "Frank_CTRL_UpJaw" -p "Frank_CTRL_Head";
	setAttr ".rp" -type "double3" -1.9542301900275944e-16 6.5771539320899004 -4.2905898943319274 ;
	setAttr ".sp" -type "double3" -1.9542301900275944e-16 6.5771539320899004 -4.2905898943319274 ;
createNode nurbsCurve -n "Frank_CTRL_UpJawShape" -p "Frank_CTRL_UpJaw";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1732509426484925e-18 7.0583203645660291 -6.3839490584588354
		-3.0153329458981781e-16 6.8928905853354863 -6.351111123564249
		-4.2960572565860668e-16 6.9060046992738977 -6.1829642775039755
		-3.0602094910972384e-16 7.089980636294646 -5.9780066622298627
		-3.1732509426402834e-18 7.3370477876412759 -5.8562996690578375
		3.0153329458982008e-16 7.5024775668718178 -5.889137603952423
		4.2960572565860875e-16 7.4893634529334072 -6.0572844500126966
		3.0602094910972651e-16 7.3053875159126589 -6.2622420652868103
		3.1732509426484925e-18 7.0583203645660291 -6.3839490584588354
		-3.0153329458981781e-16 6.8928905853354863 -6.351111123564249
		-4.2960572565860668e-16 6.9060046992738977 -6.1829642775039755
		;
createNode transform -n "Frank_CTRL_LowJaw" -p "Frank_CTRL_Head";
	setAttr ".rp" -type "double3" -3.1345166804101574e-16 5.6573668038693956 -4.2106084049214472 ;
	setAttr ".sp" -type "double3" -3.1345166804101574e-16 5.6573668038693956 -4.2106084049214472 ;
createNode nurbsCurve -n "Frank_CTRL_LowJawShape" -p "Frank_CTRL_LowJaw";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.882358403930758e-17 5.1328466232133128 -4.8956892616196894
		-5.3215394432099486e-17 5.0341882702144076 -4.9833319495604123
		-1.7408151657221421e-16 4.9355299172155025 -4.8956892616196894
		-1.9297304726280698e-16 4.8946642893619643 -4.6841010957503642
		-9.8823584039303513e-17 4.9355299172155025 -4.472512929881038
		5.3215394432099079e-17 5.0341882702144076 -4.3848702419403152
		1.7408151657221362e-16 5.1328466232133128 -4.472512929881038
		1.9297304726280673e-16 5.173712251066851 -4.6841010957503642
		9.882358403930758e-17 5.1328466232133128 -4.8956892616196894
		-5.3215394432099486e-17 5.0341882702144076 -4.9833319495604123
		-1.7408151657221421e-16 4.9355299172155025 -4.8956892616196894
		;
createNode transform -n "Frank_CTRL_LLeg1" -p "Frank_CTRL_Whole";
	setAttr ".rp" -type "double3" -2.3218 0.21114100000000002 1.70424 ;
	setAttr ".sp" -type "double3" -2.3218 0.21114100000000002 1.70424 ;
createNode nurbsCurve -n "Frank_CTRL_LLeg1Shape" -p "Frank_CTRL_LLeg1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.2476527789963532 6.870956276160647e-17 -0.49507899289380775
		-2.3697650943095452 9.7169995522189309e-17 -1.0644903951696287
		-3.4918774096227363 6.8709562761606519e-17 -0.49507899289380841
		-3.9566715491313325 2.8157433700983969e-32 0.87960173705035716
		-3.4918774096227363 -6.8709562761606494e-17 2.2542824669945238
		-2.3697650943095456 -9.7169995522189321e-17 2.8236938692703442
		-1.247652778996355 -6.8709562761606531e-17 2.2542824669945238
		-0.78285863948775791 -5.2190194147827216e-32 0.87960173705035871
		-1.2476527789963532 6.870956276160647e-17 -0.49507899289380775
		-2.3697650943095452 9.7169995522189309e-17 -1.0644903951696287
		-3.4918774096227363 6.8709562761606519e-17 -0.49507899289380841
		;
createNode transform -n "Frank_CTRL_RLeg_ToeCurl" -p "Frank_CTRL_LLeg1";
	setAttr ".rp" -type "double3" -2.4917690920106699 -0.50315906772377805 0.9453722694414195 ;
	setAttr ".sp" -type "double3" -2.4917690920106699 -0.50315906772377805 0.9453722694414195 ;
createNode nurbsCurve -n "Frank_CTRL_RLeg_ToeCurlShape" -p "Frank_CTRL_RLeg_ToeCurl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.4917690920106712 -0.33174684907462787 0.58685379581511365
		-2.4917690920106716 -0.5031590677237765 0.43835058167779717
		-2.4917690920106716 -0.67457128637292496 0.58685379581511343
		-2.4917690920106716 -0.74557255209386453 0.9453722694414185
		-2.4917690920106716 -0.67457128637292496 1.3038907430677238
		-2.4917690920106712 -0.50315906772377661 1.4523939572050404
		-2.4917690920106712 -0.33174684907462815 1.3038907430677238
		-2.4917690920106712 -0.26074558335368841 0.94537226944141894
		-2.4917690920106712 -0.33174684907462787 0.58685379581511365
		-2.4917690920106716 -0.5031590677237765 0.43835058167779717
		-2.4917690920106716 -0.67457128637292496 0.58685379581511343
		;
createNode transform -n "Frank_CTRL_LLeg" -p "Frank_CTRL_Whole";
	setAttr ".rp" -type "double3" 2.3218043887529274 0.2111411330002908 1.7042444127201675 ;
	setAttr ".sp" -type "double3" 2.3218043887529274 0.2111411330002908 1.7042444127201675 ;
createNode nurbsCurve -n "Frank_CTRL_LLegShape" -p "Frank_CTRL_LLeg";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5001773620295973 6.870956276160647e-17 -0.49507899289380775
		2.3780650467164053 9.7169995522189309e-17 -1.0644903951696287
		1.2559527314032142 6.8709562761606519e-17 -0.49507899289380841
		0.79115859189461779 2.8157433700983969e-32 0.87960173705035716
		1.255952731403214 -6.8709562761606494e-17 2.2542824669945238
		2.3780650467164048 -9.7169995522189321e-17 2.8236938692703442
		3.5001773620295955 -6.8709562761606531e-17 2.2542824669945238
		3.9649715015381926 -5.2190194147827216e-32 0.87960173705035871
		3.5001773620295973 6.870956276160647e-17 -0.49507899289380775
		2.3780650467164053 9.7169995522189309e-17 -1.0644903951696287
		1.2559527314032142 6.8709562761606519e-17 -0.49507899289380841
		;
createNode transform -n "Frank_CTRL_LLeg_ToeCurl" -p "Frank_CTRL_LLeg";
	setAttr ".rp" -type "double3" 2.4811145971635269 -0.50315906772377805 0.9453722694414195 ;
	setAttr ".sp" -type "double3" 2.4811145971635269 -0.50315906772377805 0.9453722694414195 ;
createNode nurbsCurve -n "Frank_CTRL_LLeg_ToeCurlShape" -p "Frank_CTRL_LLeg_ToeCurl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.4811145971635256 -0.33174684907462787 0.58685379581511365
		2.4811145971635251 -0.5031590677237765 0.43835058167779717
		2.4811145971635251 -0.67457128637292496 0.58685379581511343
		2.4811145971635251 -0.74557255209386453 0.9453722694414185
		2.4811145971635251 -0.67457128637292496 1.3038907430677238
		2.4811145971635256 -0.50315906772377661 1.4523939572050404
		2.4811145971635256 -0.33174684907462815 1.3038907430677238
		2.4811145971635256 -0.26074558335368841 0.94537226944141894
		2.4811145971635256 -0.33174684907462787 0.58685379581511365
		2.4811145971635251 -0.5031590677237765 0.43835058167779717
		2.4811145971635251 -0.67457128637292496 0.58685379581511343
		;
createNode fosterParent -n "Fighter_Frank_UVModel_Draft1_DoneRNfosterParent1";
createNode mesh -n "Frank_MeshShapeDeformed" -p "Fighter_Frank_UVModel_Draft1_DoneRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 26 100 -ps 2 74 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "Fighter_Frank_UVModel_Draft1_DoneRN";
	setAttr -s 2 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Fighter_Frank_UVModel_Draft1_DoneRN"
		"Fighter_Frank_UVModel_Draft1_DoneRN" 0
		"Fighter_Frank_UVModel_Draft1_DoneRN" 15
		0 "|Fighter_Frank_UVModel_Draft1_DoneRNfosterParent1|Frank_MeshShapeDeformed" 
		"|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "-s -r "
		2 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh|Fighter_Frank_UVModel_Draft1_Done:Frank_MeshShape" 
		"intermediateObject" " 1"
		2 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh|Fighter_Frank_UVModel_Draft1_Done:Frank_MeshShape" 
		"uvPivot" " -type \"double2\" 0.22841800004243851 0.95612898468971252"
		2 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh|Fighter_Frank_UVModel_Draft1_Done:Frank_MeshShape" 
		"vertexColorSource" " 2"
		5 3 "Fighter_Frank_UVModel_Draft1_DoneRN" "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh|Fighter_Frank_UVModel_Draft1_Done:Frank_MeshShape.worldMesh" 
		"Fighter_Frank_UVModel_Draft1_DoneRN.placeHolderList[1]" ""
		5 4 "Fighter_Frank_UVModel_Draft1_DoneRN" "Fighter_Frank_UVModel_Draft1_Done:surfaceShader1SG.dagSetMembers" 
		"Fighter_Frank_UVModel_Draft1_DoneRN.placeHolderList[2]" ""
		8 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "translateX"
		8 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "translateY"
		8 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "translateZ"
		8 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "rotateX"
		8 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "rotateY"
		8 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "rotateZ"
		8 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "scaleX"
		8 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "scaleY"
		8 "|Fighter_Frank_UVModel_Draft1_Done:Frank_Mesh" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode ikSCsolver -n "ikSCsolver";
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -383.33333333333343 -671.42857142857144 ;
	setAttr ".vh" -type "double2" 1086.9047619047619 347.61904761904765 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 6 ".hyp";
	setAttr ".hyp[0].x" 1.4285714626312256;
	setAttr ".hyp[0].y" -72.857139587402344;
	setAttr ".hyp[0].nvs" 1922;
	setAttr ".hyp[1].x" 787.14288330078125;
	setAttr ".hyp[1].y" -72.857139587402344;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 481.42855834960938;
	setAttr ".hyp[2].y" -72.857139587402344;
	setAttr ".hyp[2].nvs" 1922;
	setAttr ".hyp[3].x" -224.04762268066406;
	setAttr ".hyp[3].y" -70.476188659667969;
	setAttr ".hyp[3].nvs" 1922;
	setAttr ".hyp[4].x" 241.42857360839844;
	setAttr ".hyp[4].y" -72.857139587402344;
	setAttr ".hyp[4].nvs" 1922;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".anf" yes;
createNode skinCluster -n "skinCluster1";
	setAttr ".skm" 1;
	setAttr -s 1040 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr -s 2 ".wl[1].w[0:1]"  0.16500000655651093 0.83499999344348907;
	setAttr -s 2 ".wl[2].w[0:1]"  0.16500000655651093 0.83499999344348907;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[2]"  0.49781233014384746;
	setAttr ".wl[5].w[2]"  0.61159998178482056;
	setAttr ".wl[6].w[2]"  0.49910089205143637;
	setAttr ".wl[7].w[2]"  0.61159998178482056;
	setAttr ".wl[8].w[6]"  1;
	setAttr -s 2 ".wl[9].w[3:4]"  0.78640000522136688 0.21359999477863312;
	setAttr ".wl[10].w[6]"  1;
	setAttr -s 2 ".wl[11].w[3:4]"  0.78640000522136688 0.21359999477863312;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[1]"  1;
	setAttr ".wl[14].w[2]"  0.61159998178482056;
	setAttr ".wl[15].w[3]"  1;
	setAttr ".wl[16].w[5]"  1;
	setAttr ".wl[17].w[5]"  1;
	setAttr ".wl[18].w[5]"  1;
	setAttr ".wl[19].w[5]"  1;
	setAttr -s 2 ".wl[20].w";
	setAttr ".wl[20].w[4]" 0.49510002136230469;
	setAttr ".wl[20].w[6]" 0.50489997863769531;
	setAttr -s 2 ".wl[21].w[3:4]"  0.5 0.5;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.375;
	setAttr ".wl[22].w[3]" 0.125;
	setAttr ".wl[22].w[4]" 0.5;
	setAttr -s 2 ".wl[23].w";
	setAttr ".wl[23].w[4]" 0.49510002136230469;
	setAttr ".wl[23].w[6]" 0.50489997863769531;
	setAttr ".wl[24].w[4]"  1;
	setAttr ".wl[25].w[4]"  1;
	setAttr ".wl[26].w[4]"  1;
	setAttr ".wl[27].w[4]"  1;
	setAttr ".wl[28].w[4]"  1;
	setAttr ".wl[29].w[4]"  1;
	setAttr ".wl[30].w[4]"  1;
	setAttr ".wl[31].w[4]"  1;
	setAttr ".wl[32].w[6]"  1;
	setAttr -s 2 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.48540002107620239;
	setAttr ".wl[33].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.48540002107620239;
	setAttr ".wl[34].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.48540002107620239;
	setAttr ".wl[35].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[36].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[37].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[38].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[39].w[21:22]"  0.23299998044967649 0.76700001955032349;
	setAttr -s 2 ".wl[40].w[21:22]"  0.23299998044967654 0.76700001955032349;
	setAttr -s 2 ".wl[41].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr -s 2 ".wl[42].w[21:22]"  0.23299998044967654 0.76700001955032349;
	setAttr -s 2 ".wl[43].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr -s 2 ".wl[44].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr -s 2 ".wl[45].w[0:1]"  0.68930000066757202 0.31069999933242798;
	setAttr -s 2 ".wl[46].w[0:1]"  0.68930000066757202 0.31069999933242798;
	setAttr -s 2 ".wl[47].w[0:1]"  0.68930000066757202 0.31069999933242798;
	setAttr ".wl[48].w[4]"  1;
	setAttr ".wl[49].w[4]"  1;
	setAttr ".wl[50].w[4]"  1;
	setAttr ".wl[51].w[4]"  1;
	setAttr ".wl[52].w[6]"  1;
	setAttr ".wl[53].w[6]"  1;
	setAttr ".wl[54].w[3]"  1;
	setAttr ".wl[55].w[2]"  0.49926582508189293;
	setAttr ".wl[56].w[1]"  1;
	setAttr -s 2 ".wl[57].w[0:1]"  0.93199999630451202 0.068000003695487976;
	setAttr ".wl[58].w[0]"  1;
	setAttr -s 2 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.48540002107620239;
	setAttr ".wl[59].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[60].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[61].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr -s 2 ".wl[62].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr ".wl[63].w[6]"  1;
	setAttr -s 2 ".wl[64].w[6:7]"  0.60527345127107524 0.39472654872892476;
	setAttr ".wl[65].w[6]"  1;
	setAttr -s 2 ".wl[66].w[6:7]"  0.60801051208742984 0.39198948791257027;
	setAttr ".wl[67].w[6]"  1;
	setAttr ".wl[68].w[6]"  1;
	setAttr ".wl[69].w[6]"  1;
	setAttr ".wl[70].w[6]"  1;
	setAttr ".wl[71].w[6]"  1;
	setAttr -s 2 ".wl[72].w[6:7]"  0.59473331795863738 0.40526668204136257;
	setAttr ".wl[73].w[6]"  1;
	setAttr ".wl[74].w[6]"  1;
	setAttr ".wl[75].w[6]"  1;
	setAttr ".wl[76].w[6]"  1;
	setAttr ".wl[77].w[6]"  1;
	setAttr ".wl[78].w[6]"  1;
	setAttr ".wl[79].w[6]"  1;
	setAttr ".wl[80].w[6]"  1;
	setAttr ".wl[81].w[6]"  1;
	setAttr ".wl[82].w[6]"  1;
	setAttr ".wl[83].w[6]"  1;
	setAttr ".wl[84].w[6]"  1;
	setAttr ".wl[85].w[7]"  1;
	setAttr ".wl[86].w[7]"  1;
	setAttr ".wl[87].w[7]"  1;
	setAttr ".wl[88].w[7]"  1;
	setAttr ".wl[89].w[7]"  1;
	setAttr ".wl[90].w[7]"  1;
	setAttr ".wl[91].w[7]"  1;
	setAttr ".wl[92].w[7]"  1;
	setAttr ".wl[93].w[7]"  1;
	setAttr ".wl[94].w[7]"  1;
	setAttr ".wl[95].w[7]"  1;
	setAttr ".wl[96].w[7]"  1;
	setAttr ".wl[97].w[7]"  1;
	setAttr ".wl[98].w[7]"  1;
	setAttr ".wl[99].w[7]"  1;
	setAttr ".wl[100].w[7]"  1;
	setAttr ".wl[101].w[7]"  1;
	setAttr ".wl[102].w[7]"  1;
	setAttr -s 2 ".wl[103].w[6:7]"  0.71194106679148117 0.28805893320851877;
	setAttr -s 2 ".wl[104].w[6:7]"  0.64000076787413451 0.3599992321258656;
	setAttr -s 2 ".wl[105].w[6:7]"  0.71051273844350127 0.28948726155649868;
	setAttr -s 2 ".wl[106].w[6:7]"  0.68189285896711371 0.31810714103288634;
	setAttr -s 2 ".wl[107].w[6:7]"  0.62153944605423272 0.37846055394576733;
	setAttr -s 2 ".wl[108].w[6:7]"  0.58901385767505021 0.41098614232494979;
	setAttr -s 2 ".wl[109].w[6:7]"  0.61647873025412203 0.38352126974587797;
	setAttr -s 2 ".wl[110].w[6:7]"  0.61610481221190139 0.38389518778809856;
	setAttr -s 2 ".wl[111].w[6:7]"  0.55328991199756572 0.44671008800243422;
	setAttr -s 2 ".wl[112].w[6:7]"  0.55983552638051903 0.44016447361948108;
	setAttr -s 2 ".wl[113].w[6:7]"  0.56044551463234482 0.43955448536765512;
	setAttr -s 2 ".wl[114].w[6:7]"  0.56140656169338621 0.43859343830661374;
	setAttr -s 2 ".wl[115].w[6:7]"  0.55344656465862785 0.44655343534137215;
	setAttr ".wl[116].w[7]"  1;
	setAttr -s 2 ".wl[117].w[6:7]"  0.54128346272992323 0.45871653727007677;
	setAttr ".wl[118].w[7]"  1;
	setAttr -s 2 ".wl[119].w[6:7]"  0.53322390705728506 0.46677609294271494;
	setAttr ".wl[120].w[7]"  1;
	setAttr -s 2 ".wl[121].w[6:7]"  0.51501716980958101 0.4849828301904191;
	setAttr ".wl[122].w[7]"  1;
	setAttr ".wl[123].w[7]"  1;
	setAttr ".wl[124].w[7]"  1;
	setAttr ".wl[125].w[7]"  1;
	setAttr ".wl[126].w[7]"  1;
	setAttr -s 2 ".wl[127].w";
	setAttr ".wl[127].w[3]" 0.20389997959136963;
	setAttr ".wl[127].w[6]" 0.79610002040863037;
	setAttr -s 2 ".wl[128].w";
	setAttr ".wl[128].w[3]" 0.20389997959136963;
	setAttr ".wl[128].w[6]" 0.79610002040863037;
	setAttr -s 2 ".wl[129].w[2:3]"  0.53682592790131667 0.46317407209868333;
	setAttr -s 2 ".wl[130].w[2:3]"  0.53899757879064514 0.46100242120935481;
	setAttr -s 2 ".wl[131].w[2:3]"  0.50476453061723903 0.49523546938276092;
	setAttr -s 3 ".wl[132].w";
	setAttr ".wl[132].w[0]" 0.33653332789738977;
	setAttr ".wl[132].w[2]" 0.16826666394869486;
	setAttr ".wl[132].w[3]" 0.49520000815391541;
	setAttr ".wl[133].w[6]"  1;
	setAttr ".wl[134].w[6]"  1;
	setAttr ".wl[135].w[6]"  1;
	setAttr ".wl[136].w[6]"  1;
	setAttr ".wl[137].w[6]"  1;
	setAttr ".wl[138].w[6]"  1;
	setAttr ".wl[139].w[6]"  1;
	setAttr ".wl[140].w[6]"  1;
	setAttr ".wl[141].w[6]"  1;
	setAttr ".wl[142].w[6]"  1;
	setAttr ".wl[143].w[6]"  1;
	setAttr ".wl[144].w[6]"  1;
	setAttr ".wl[145].w[6]"  1;
	setAttr ".wl[146].w[6]"  1;
	setAttr ".wl[147].w[6]"  1;
	setAttr ".wl[148].w[6]"  1;
	setAttr ".wl[149].w[6]"  1;
	setAttr ".wl[150].w[6]"  1;
	setAttr ".wl[151].w[6]"  1;
	setAttr ".wl[152].w[6]"  1;
	setAttr ".wl[153].w[6]"  1;
	setAttr ".wl[154].w[6]"  1;
	setAttr ".wl[155].w[6]"  1;
	setAttr ".wl[156].w[6]"  1;
	setAttr ".wl[157].w[6]"  1;
	setAttr ".wl[158].w[6]"  1;
	setAttr ".wl[159].w[6]"  1;
	setAttr ".wl[160].w[6]"  1;
	setAttr ".wl[161].w[6]"  1;
	setAttr ".wl[162].w[6]"  1;
	setAttr ".wl[163].w[6]"  1;
	setAttr ".wl[164].w[6]"  1;
	setAttr -s 2 ".wl[165].w";
	setAttr ".wl[165].w[0]" 0.78640000522136688;
	setAttr ".wl[165].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[166].w";
	setAttr ".wl[166].w[0]" 0.78640000522136688;
	setAttr ".wl[166].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[167].w";
	setAttr ".wl[167].w[0]" 0.78640000522136688;
	setAttr ".wl[167].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[168].w";
	setAttr ".wl[168].w[0]" 0.78640000522136688;
	setAttr ".wl[168].w[20]" 0.21359999477863312;
	setAttr ".wl[169].w[1]"  1;
	setAttr -s 2 ".wl[170].w[1:2]"  0.87500017136335373 0.12499982863664627;
	setAttr -s 2 ".wl[171].w[1:2]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[172].w[1:2]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[173].w[20:21]"  0.96786521889179133 0.032134781108208672;
	setAttr -s 2 ".wl[174].w[20:21]"  0.90892661140823205 0.091073388591767973;
	setAttr -s 2 ".wl[175].w[20:21]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[176].w[20:21]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[177].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[178].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[179].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[180].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[181].w[1:2]"  0.66019999980926514 0.33980000019073486;
	setAttr -s 2 ".wl[182].w[1:2]"  0.66019999980926514 0.33980000019073486;
	setAttr -s 2 ".wl[183].w[1:2]"  0.66019999980926514 0.33980000019073486;
	setAttr ".wl[184].w[1]"  0.087399996817111969;
	setAttr -s 2 ".wl[185].w[0:1]"  0.93199999630451202 0.068000003695487976;
	setAttr -s 2 ".wl[186].w[0:1]"  0.31069999933242798 0.68930000066757202;
	setAttr -s 2 ".wl[187].w[0:1]"  0.93199999630451202 0.068000003695487976;
	setAttr -s 2 ".wl[188].w[0:1]"  0.31069999933242798 0.68930000066757202;
	setAttr ".wl[189].w[1]"  1;
	setAttr ".wl[190].w[1]"  1;
	setAttr ".wl[191].w[1]"  1;
	setAttr ".wl[192].w[1]"  1;
	setAttr -s 2 ".wl[193].w";
	setAttr ".wl[193].w[0]" 0.78640000522136688;
	setAttr ".wl[193].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[194].w";
	setAttr ".wl[194].w[0]" 0.48540002107620239;
	setAttr ".wl[194].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[195].w";
	setAttr ".wl[195].w[0]" 0.78640000522136688;
	setAttr ".wl[195].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[196].w";
	setAttr ".wl[196].w[0]" 0.48540002107620239;
	setAttr ".wl[196].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[197].w[20:21]"  0.86537637475211215 0.13462362524788785;
	setAttr -s 2 ".wl[198].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[199].w[20:21]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[200].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[201].w[21:22]"  0.93680000305175781 0.063199996948242188;
	setAttr -s 2 ".wl[202].w[21:22]"  0.23299998044967654 0.76700001955032349;
	setAttr -s 2 ".wl[203].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[204].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[1]"  1;
	setAttr ".wl[208].w[1]"  1;
	setAttr -s 2 ".wl[209].w[0:1]"  0.93199999630451202 0.068000003695487976;
	setAttr -s 2 ".wl[210].w[0:1]"  0.31069999933242798 0.68930000066757202;
	setAttr ".wl[211].w[0]"  1;
	setAttr -s 2 ".wl[212].w";
	setAttr ".wl[212].w[0]" 0.78640000522136688;
	setAttr ".wl[212].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[213].w";
	setAttr ".wl[213].w[0]" 0.48540002107620239;
	setAttr ".wl[213].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[214].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[215].w[20:21]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[216].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[217].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr ".wl[218].w[2]"  0.23299999535083771;
	setAttr ".wl[219].w[2]"  0.23299999535083771;
	setAttr ".wl[220].w[2]"  0.23299999535083771;
	setAttr ".wl[221].w[1]"  1;
	setAttr ".wl[222].w[1]"  1;
	setAttr ".wl[223].w[1]"  1;
	setAttr ".wl[224].w[1]"  1;
	setAttr ".wl[225].w[1]"  1;
	setAttr ".wl[226].w[1]"  1;
	setAttr ".wl[227].w[1]"  1;
	setAttr ".wl[228].w[1]"  1;
	setAttr ".wl[229].w[1]"  1;
	setAttr ".wl[230].w[1]"  1;
	setAttr ".wl[231].w[1]"  1;
	setAttr ".wl[232].w[1]"  1;
	setAttr ".wl[233].w[1]"  1;
	setAttr ".wl[234].w[1]"  1;
	setAttr ".wl[235].w[1]"  1;
	setAttr ".wl[236].w[1]"  1;
	setAttr ".wl[237].w[1]"  1;
	setAttr ".wl[238].w[1]"  1;
	setAttr ".wl[239].w[6]"  1;
	setAttr ".wl[240].w[6]"  1;
	setAttr ".wl[241].w[6]"  1;
	setAttr ".wl[242].w[6]"  1;
	setAttr ".wl[243].w[6]"  1;
	setAttr ".wl[244].w[6]"  1;
	setAttr ".wl[245].w[6]"  1;
	setAttr ".wl[246].w[6]"  1;
	setAttr ".wl[247].w[6]"  1;
	setAttr ".wl[248].w[6]"  1;
	setAttr ".wl[249].w[6]"  1;
	setAttr ".wl[250].w[6]"  1;
	setAttr ".wl[251].w[6]"  1;
	setAttr ".wl[252].w[6]"  1;
	setAttr ".wl[253].w[6]"  1;
	setAttr ".wl[254].w[6]"  1;
	setAttr ".wl[255].w[6]"  1;
	setAttr ".wl[256].w[6]"  1;
	setAttr ".wl[257].w[6]"  1;
	setAttr ".wl[258].w[6]"  1;
	setAttr ".wl[259].w[6]"  1;
	setAttr ".wl[260].w[6]"  1;
	setAttr ".wl[261].w[6]"  1;
	setAttr ".wl[262].w[6]"  1;
	setAttr ".wl[263].w[6]"  1;
	setAttr ".wl[264].w[6]"  1;
	setAttr -s 2 ".wl[265].w[8:9]"  0.2038999795913696 0.79610002040863037;
	setAttr -s 2 ".wl[266].w[8:9]"  0.20389997959136966 0.79610002040863037;
	setAttr ".wl[267].w[8]"  1;
	setAttr ".wl[268].w[8]"  1;
	setAttr ".wl[269].w[8]"  1;
	setAttr ".wl[270].w[8]"  1;
	setAttr -s 2 ".wl[271].w[8:9]"  0.20389997959136963 0.79610002040863037;
	setAttr -s 2 ".wl[272].w[8:9]"  0.20389997959136963 0.79610002040863037;
	setAttr ".wl[273].w[9]"  1;
	setAttr ".wl[274].w[9]"  1;
	setAttr ".wl[275].w[9]"  1;
	setAttr ".wl[276].w[9]"  1;
	setAttr ".wl[277].w[10]"  1;
	setAttr ".wl[278].w[10]"  1;
	setAttr -s 2 ".wl[279].w[10:11]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[280].w[10:11]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[281].w[10:11]"  0.63109999895095825 0.36890000104904175;
	setAttr -s 2 ".wl[282].w[10:11]"  0.63109999895095825 0.36890000104904175;
	setAttr -s 2 ".wl[283].w[10:11]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[284].w[10:11]"  0.74759998917579651 0.25240001082420349;
	setAttr ".wl[285].w[9]"  1;
	setAttr ".wl[286].w[10]"  1;
	setAttr -s 2 ".wl[287].w[10:11]"  0.63109999895095825 0.36890000104904175;
	setAttr -s 2 ".wl[288].w[10:11]"  0.63109999895095825 0.36890000104904175;
	setAttr ".wl[289].w[10]"  1;
	setAttr ".wl[290].w[9]"  1;
	setAttr ".wl[291].w[9]"  1;
	setAttr ".wl[292].w[9]"  1;
	setAttr -s 2 ".wl[293].w[9:10]"  0.5049000084400177 0.4950999915599823;
	setAttr -s 2 ".wl[294].w[9:10]"  0.5049000084400177 0.4950999915599823;
	setAttr -s 2 ".wl[295].w[9:10]"  0.5049000084400177 0.4950999915599823;
	setAttr -s 2 ".wl[296].w[9:10]"  0.31069999933242798 0.68930000066757202;
	setAttr -s 2 ".wl[297].w[9:10]"  0.31069999933242798 0.68930000066757202;
	setAttr -s 2 ".wl[298].w[9:10]"  0.5049000084400177 0.4950999915599823;
	setAttr ".wl[299].w[12]"  1;
	setAttr ".wl[300].w[12]"  1;
	setAttr ".wl[301].w[12]"  1;
	setAttr ".wl[302].w[12]"  1;
	setAttr ".wl[303].w[12]"  1;
	setAttr ".wl[304].w[12]"  1;
	setAttr -s 2 ".wl[305].w[11:12]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[306].w[11:12]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[307].w[11:12]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[308].w[11:12]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[309].w[11:12]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[310].w[11:12]"  0.74759998917579651 0.25240001082420349;
	setAttr ".wl[311].w[13]"  1;
	setAttr ".wl[312].w[13]"  1;
	setAttr ".wl[313].w[13]"  1;
	setAttr ".wl[314].w[13]"  1;
	setAttr ".wl[315].w[13]"  1;
	setAttr ".wl[316].w[13]"  1;
	setAttr -s 2 ".wl[317].w[12:13]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[318].w[12:13]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[319].w[12:13]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[320].w[12:13]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[321].w[12:13]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[322].w[12:13]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[323].w[8:9]"  0.20389997959136966 0.79610002040863037;
	setAttr ".wl[324].w[9]"  1;
	setAttr ".wl[325].w[9]"  1;
	setAttr ".wl[326].w[9]"  1;
	setAttr -s 2 ".wl[327].w[9:10]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[328].w[10:11]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[329].w[10:11]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[330].w[11:12]"  0.74759998917579651 0.25240001082420349;
	setAttr ".wl[331].w[12]"  1;
	setAttr -s 2 ".wl[332].w[12:13]"  0.62139999866485596 0.37860000133514404;
	setAttr ".wl[333].w[13]"  1;
	setAttr ".wl[334].w[13]"  1;
	setAttr ".wl[335].w[13]"  1;
	setAttr -s 2 ".wl[336].w[12:13]"  0.62139999866485596 0.37860000133514404;
	setAttr ".wl[337].w[12]"  1;
	setAttr -s 2 ".wl[338].w[11:12]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[339].w[10:11]"  0.63109999895095825 0.36890000104904175;
	setAttr ".wl[340].w[10]"  1;
	setAttr -s 2 ".wl[341].w[9:10]"  0.5049000084400177 0.4950999915599823;
	setAttr -s 2 ".wl[342].w[8:9]"  0.20389997959136963 0.79610002040863037;
	setAttr ".wl[343].w[8]"  1;
	setAttr ".wl[344].w[8]"  1;
	setAttr ".wl[345].w[8]"  1;
	setAttr ".wl[346].w[8]"  1;
	setAttr ".wl[347].w[8]"  1;
	setAttr -s 2 ".wl[348].w[8:9]"  0.20389997959136963 0.79610002040863037;
	setAttr ".wl[349].w[9]"  1;
	setAttr ".wl[350].w[9]"  1;
	setAttr ".wl[351].w[9]"  1;
	setAttr ".wl[352].w[9]"  1;
	setAttr ".wl[353].w[9]"  1;
	setAttr -s 2 ".wl[354].w[8:9]"  0.20389997959136963 0.79610002040863037;
	setAttr ".wl[355].w[8]"  1;
	setAttr ".wl[356].w[8]"  1;
	setAttr ".wl[357].w[8]"  1;
	setAttr ".wl[358].w[8]"  1;
	setAttr ".wl[359].w[8]"  1;
	setAttr ".wl[360].w[8]"  1;
	setAttr ".wl[361].w[8]"  1;
	setAttr ".wl[362].w[8]"  1;
	setAttr -s 2 ".wl[363].w[8:9]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[364].w[8:9]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[365].w[8:9]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[366].w[8:9]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[367].w[8:9]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[368].w[8:9]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[369].w[8:9]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[370].w[8:9]"  0.79610000550746918 0.20389999449253082;
	setAttr ".wl[371].w[9]"  1;
	setAttr ".wl[372].w[9]"  1;
	setAttr ".wl[373].w[9]"  1;
	setAttr ".wl[374].w[9]"  1;
	setAttr ".wl[375].w[9]"  1;
	setAttr ".wl[376].w[9]"  1;
	setAttr ".wl[377].w[9]"  1;
	setAttr ".wl[378].w[9]"  1;
	setAttr ".wl[379].w[23]"  1;
	setAttr ".wl[380].w[23]"  1;
	setAttr ".wl[381].w[23]"  1;
	setAttr ".wl[382].w[23]"  1;
	setAttr ".wl[383].w[23]"  1;
	setAttr ".wl[384].w[23]"  1;
	setAttr ".wl[385].w[23]"  1;
	setAttr ".wl[386].w[23]"  1;
	setAttr ".wl[387].w[23]"  1;
	setAttr ".wl[388].w[23]"  1;
	setAttr ".wl[389].w[23]"  1;
	setAttr ".wl[390].w[23]"  1;
	setAttr ".wl[391].w[23]"  1;
	setAttr ".wl[392].w[23]"  1;
	setAttr ".wl[393].w[23]"  1;
	setAttr -s 2 ".wl[394].w";
	setAttr ".wl[394].w[23]" 0.99764517564157174;
	setAttr ".wl[394].w[29]" 0.0023548243584282438;
	setAttr ".wl[395].w[23]"  1;
	setAttr ".wl[396].w[23]"  1;
	setAttr -s 2 ".wl[397].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr -s 2 ".wl[398].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr -s 2 ".wl[399].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr -s 2 ".wl[400].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr -s 2 ".wl[401].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr -s 2 ".wl[402].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr ".wl[403].w[23]"  1;
	setAttr ".wl[404].w[23]"  1;
	setAttr ".wl[405].w[23]"  1;
	setAttr ".wl[406].w[23]"  1;
	setAttr ".wl[407].w[23]"  1;
	setAttr ".wl[408].w[23]"  1;
	setAttr -s 2 ".wl[409].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[410].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[411].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[412].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[413].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[414].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr ".wl[415].w[24]"  1;
	setAttr ".wl[416].w[24]"  1;
	setAttr ".wl[417].w[24]"  1;
	setAttr ".wl[418].w[24]"  1;
	setAttr ".wl[419].w[24]"  1;
	setAttr ".wl[420].w[24]"  1;
	setAttr -s 2 ".wl[421].w";
	setAttr ".wl[421].w[25]" 0.81550000607967377;
	setAttr ".wl[421].w[28]" 0.18449999392032623;
	setAttr -s 2 ".wl[422].w[25:26]"  0.91160000115633011 0.088399998843669891;
	setAttr -s 2 ".wl[423].w[25:26]"  0.91160000115633011 0.088399998843669891;
	setAttr ".wl[424].w[25]"  1;
	setAttr -s 2 ".wl[425].w[25:26]"  0.91161248244508275 0.08838751755491725;
	setAttr ".wl[426].w[25]"  1;
	setAttr -s 2 ".wl[427].w";
	setAttr ".wl[427].w[25]" 0.5049000084400177;
	setAttr ".wl[427].w[28]" 0.4950999915599823;
	setAttr -s 2 ".wl[428].w[25:26]"  0.65049999952316284 0.34950000047683716;
	setAttr -s 2 ".wl[429].w[25:26]"  0.65049999952316284 0.34950000047683716;
	setAttr -s 2 ".wl[430].w";
	setAttr ".wl[430].w[25]" 0.5049000084400177;
	setAttr ".wl[430].w[28]" 0.4950999915599823;
	setAttr -s 2 ".wl[431].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[432].w";
	setAttr ".wl[432].w[25]" 0.54370000958442688;
	setAttr ".wl[432].w[28]" 0.45629999041557312;
	setAttr ".wl[433].w[23]"  1;
	setAttr ".wl[434].w[23]"  1;
	setAttr ".wl[435].w[23]"  1;
	setAttr ".wl[436].w[23]"  1;
	setAttr ".wl[437].w[23]"  1;
	setAttr -s 2 ".wl[438].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr -s 2 ".wl[439].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr ".wl[440].w[24]"  1;
	setAttr ".wl[441].w[25]"  1;
	setAttr -s 2 ".wl[442].w[25:26]"  0.69711661537087299 0.30288338462912695;
	setAttr -s 2 ".wl[443].w";
	setAttr ".wl[443].w[25]" 0.99821058812085539;
	setAttr ".wl[443].w[28]" 0.001789411879144609;
	setAttr -s 2 ".wl[444].w[25:26]"  0.65049999952316284 0.34950000047683716;
	setAttr -s 2 ".wl[445].w[25:26]"  0.91160000115633011 0.088399998843669891;
	setAttr ".wl[446].w[24]"  1;
	setAttr -s 2 ".wl[447].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[448].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr ".wl[449].w[23]"  1;
	setAttr ".wl[450].w[23]"  1;
	setAttr ".wl[451].w[23]"  1;
	setAttr ".wl[452].w[23]"  1;
	setAttr ".wl[453].w[23]"  1;
	setAttr ".wl[454].w[23]"  1;
	setAttr ".wl[455].w[23]"  1;
	setAttr ".wl[456].w[23]"  1;
	setAttr ".wl[457].w[23]"  1;
	setAttr -s 2 ".wl[458].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr -s 2 ".wl[459].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr ".wl[460].w[24]"  1;
	setAttr ".wl[461].w[25]"  1;
	setAttr -s 2 ".wl[462].w";
	setAttr ".wl[462].w[25]" 0.54370000958442688;
	setAttr ".wl[462].w[28]" 0.45629999041557312;
	setAttr -s 2 ".wl[463].w";
	setAttr ".wl[463].w[25]" 0.54370000958442688;
	setAttr ".wl[463].w[28]" 0.45629999041557312;
	setAttr -s 2 ".wl[464].w";
	setAttr ".wl[464].w[25]" 0.81550000607967377;
	setAttr ".wl[464].w[28]" 0.18449999392032623;
	setAttr -s 2 ".wl[465].w";
	setAttr ".wl[465].w[25]" 0.81550000607967377;
	setAttr ".wl[465].w[28]" 0.18449999392032623;
	setAttr ".wl[466].w[24]"  1;
	setAttr -s 2 ".wl[467].w[23:24]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[468].w[23:24]"  0.83499999344348907 0.16500000655651093;
	setAttr ".wl[469].w[23]"  1;
	setAttr ".wl[470].w[23]"  1;
	setAttr ".wl[471].w[23]"  1;
	setAttr ".wl[472].w[23]"  1;
	setAttr -s 2 ".wl[473].w[28:29]"  0.13590002059936523 0.86409997940063477;
	setAttr -s 2 ".wl[474].w[28:29]"  0.13590002059936523 0.86409997940063477;
	setAttr -s 2 ".wl[475].w[28:29]"  0.13590002059936523 0.86409997940063477;
	setAttr -s 2 ".wl[476].w[28:29]"  0.13590002059936523 0.86409997940063477;
	setAttr -s 2 ".wl[477].w[28:29]"  0.13590002059936523 0.86409997940063477;
	setAttr -s 2 ".wl[478].w[28:29]"  0.13590002059936523 0.86409997940063477;
	setAttr ".wl[479].w[29]"  1;
	setAttr ".wl[480].w[29]"  1;
	setAttr ".wl[481].w[29]"  1;
	setAttr ".wl[482].w[29]"  1;
	setAttr ".wl[483].w[29]"  1;
	setAttr ".wl[484].w[29]"  1;
	setAttr -s 2 ".wl[485].w[26:27]"  0.94350755300983158 0.05649244699016847;
	setAttr -s 2 ".wl[486].w[26:27]"  0.93469999730587006 0.065300002694129944;
	setAttr -s 2 ".wl[487].w[26:27]"  0.93469999730587006 0.065300002694129944;
	setAttr -s 2 ".wl[488].w[26:27]"  0.93474151186601062 0.065258488133989392;
	setAttr -s 2 ".wl[489].w[26:27]"  0.9943308547469758 0.0056691452530241481;
	setAttr -s 2 ".wl[490].w[26:27]"  0.99867801902688613 0.0013219809731138223;
	setAttr -s 2 ".wl[491].w[26:27]"  0.64079999923706055 0.35920000076293945;
	setAttr -s 2 ".wl[492].w[26:27]"  0.6059815337797313 0.39401846622026865;
	setAttr -s 2 ".wl[493].w[26:27]"  0.61073602438765839 0.38926397561234155;
	setAttr -s 2 ".wl[494].w[26:27]"  0.64079999923706055 0.35920000076293945;
	setAttr -s 2 ".wl[495].w[26:27]"  0.64079999923706055 0.35920000076293945;
	setAttr -s 2 ".wl[496].w[26:27]"  0.64079999923706055 0.35920000076293945;
	setAttr -s 2 ".wl[497].w[26:27]"  0.27179998159408569 0.72820001840591431;
	setAttr -s 2 ".wl[498].w[26:27]"  0.27179998159408569 0.72820001840591431;
	setAttr -s 2 ".wl[499].w[26:27]"  0.27179998159408569 0.72820001840591431;
	setAttr -s 2 ".wl[500].w[26:27]"  0.27179998159408569 0.72820001840591431;
	setAttr -s 2 ".wl[501].w[26:27]"  0.27179998159408569 0.72820001840591431;
	setAttr -s 2 ".wl[502].w[26:27]"  0.27179998159408569 0.72820001840591431;
	setAttr ".wl[503].w[27]"  1;
	setAttr ".wl[504].w[27]"  1;
	setAttr ".wl[505].w[27]"  1;
	setAttr ".wl[506].w[27]"  1;
	setAttr ".wl[507].w[27]"  1;
	setAttr ".wl[508].w[27]"  1;
	setAttr -s 2 ".wl[509].w[28:29]"  0.85316552484027974 0.14683447515972023;
	setAttr -s 2 ".wl[510].w[28:29]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[511].w[28:29]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[512].w[28:29]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[513].w[28:29]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[514].w[28:29]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[515].w[28:29]"  0.34950000047683716 0.65049999952316284;
	setAttr -s 2 ".wl[516].w[28:29]"  0.66990000009536743 0.33009999990463257;
	setAttr -s 2 ".wl[517].w[28:29]"  0.66990000009536743 0.33009999990463257;
	setAttr -s 2 ".wl[518].w[28:29]"  0.34950000047683716 0.65049999952316284;
	setAttr -s 2 ".wl[519].w[28:29]"  0.34950000047683716 0.65049999952316284;
	setAttr -s 2 ".wl[520].w[28:29]"  0.34950000047683716 0.65049999952316284;
	setAttr -s 2 ".wl[521].w[25:26]"  0.55956678810363814 0.44043321189636192;
	setAttr -s 2 ".wl[522].w[25:26]"  0.54177827145548341 0.45822172854451665;
	setAttr -s 2 ".wl[523].w[25:26]"  0.65049999952316284 0.34950000047683716;
	setAttr -s 2 ".wl[524].w[25:26]"  0.65049999952316284 0.34950000047683716;
	setAttr -s 2 ".wl[525].w[25:26]"  0.65049999952316284 0.34950000047683716;
	setAttr -s 2 ".wl[526].w[25:26]"  0.54989649777273186 0.45010350222726808;
	setAttr -s 2 ".wl[527].w";
	setAttr ".wl[527].w[25]" 0.30099999904632568;
	setAttr ".wl[527].w[28]" 0.69900000095367432;
	setAttr -s 2 ".wl[528].w";
	setAttr ".wl[528].w[25]" 0.30099999904632568;
	setAttr ".wl[528].w[28]" 0.69900000095367432;
	setAttr -s 2 ".wl[529].w";
	setAttr ".wl[529].w[25]" 0.5049000084400177;
	setAttr ".wl[529].w[28]" 0.4950999915599823;
	setAttr -s 2 ".wl[530].w";
	setAttr ".wl[530].w[25]" 0.54370000958442688;
	setAttr ".wl[530].w[28]" 0.45629999041557312;
	setAttr -s 2 ".wl[531].w";
	setAttr ".wl[531].w[25]" 0.24269998073577881;
	setAttr ".wl[531].w[28]" 0.75730001926422119;
	setAttr -s 2 ".wl[532].w";
	setAttr ".wl[532].w[25]" 0.30099999904632568;
	setAttr ".wl[532].w[28]" 0.69900000095367432;
	setAttr ".wl[533].w[24]"  1;
	setAttr ".wl[534].w[24]"  1;
	setAttr ".wl[535].w[24]"  1;
	setAttr ".wl[536].w[24]"  1;
	setAttr ".wl[537].w[24]"  1;
	setAttr ".wl[538].w[24]"  1;
	setAttr ".wl[539].w[24]"  1;
	setAttr ".wl[540].w[24]"  1;
	setAttr ".wl[541].w[24]"  1;
	setAttr ".wl[542].w[24]"  1;
	setAttr -s 2 ".wl[543].w[24:25]"  0.53400000929832458 0.46599999070167542;
	setAttr -s 2 ".wl[544].w[24:25]"  0.53400000929832458 0.46599999070167542;
	setAttr -s 2 ".wl[545].w[24:25]"  0.53400000929832458 0.46599999070167542;
	setAttr -s 2 ".wl[546].w[24:25]"  0.53400000929832458 0.46599999070167542;
	setAttr -s 2 ".wl[547].w[24:25]"  0.53400000929832458 0.46599999070167542;
	setAttr ".wl[548].w[24]"  1;
	setAttr ".wl[549].w[24]"  1;
	setAttr -s 2 ".wl[550].w[24:25]"  0.53400000929832458 0.46599999070167542;
	setAttr -s 2 ".wl[551].w[24:25]"  0.53400000929832458 0.46599999070167542;
	setAttr -s 2 ".wl[552].w[24:25]"  0.53400000929832458 0.46599999070167542;
	setAttr ".wl[553].w[24]"  1;
	setAttr ".wl[554].w[24]"  1;
	setAttr ".wl[555].w[24]"  1;
	setAttr ".wl[556].w[24]"  1;
	setAttr ".wl[557].w[1]"  1;
	setAttr -s 2 ".wl[558].w[0:1]"  0.93199999630451202 0.068000003695487976;
	setAttr -s 2 ".wl[559].w[0:1]"  0.68930000066757202 0.31069999933242798;
	setAttr ".wl[560].w[1]"  1;
	setAttr -s 2 ".wl[561].w[0:1]"  0.68930000066757202 0.31069999933242798;
	setAttr -s 2 ".wl[562].w[0:1]"  0.16500000655651093 0.83499999344348907;
	setAttr -s 2 ".wl[563].w[21:22]"  0.23299998044967654 0.76700001955032349;
	setAttr -s 2 ".wl[564].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr -s 2 ".wl[565].w[0:1]"  0.93199999630451202 0.068000003695487976;
	setAttr -s 2 ".wl[566].w[0:1]"  0.31069999933242798 0.68930000066757202;
	setAttr ".wl[567].w[1]"  1;
	setAttr ".wl[568].w[1]"  1;
	setAttr -s 2 ".wl[569].w[1:2]"  0.66019999980926514 0.33980000019073486;
	setAttr ".wl[570].w[1]"  0.087399996817111969;
	setAttr ".wl[571].w[1]"  1;
	setAttr -s 2 ".wl[572].w[1:2]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[573].w[1:2]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[574].w[1:2]"  0.66019999980926514 0.33980000019073486;
	setAttr ".wl[575].w[6]"  1;
	setAttr ".wl[576].w[6]"  1;
	setAttr ".wl[577].w[6]"  1;
	setAttr ".wl[578].w[6]"  1;
	setAttr ".wl[579].w[3]"  1;
	setAttr -s 2 ".wl[580].w[2:3]"  0.53682592790131667 0.46317407209868333;
	setAttr -s 3 ".wl[581].w";
	setAttr ".wl[581].w[0]" 5.1209018669950979e-07;
	setAttr ".wl[581].w[2]" 0.53899745730161153;
	setAttr ".wl[581].w[3]" 0.46100203060820177;
	setAttr ".wl[582].w[3]"  1;
	setAttr -s 2 ".wl[583].w[2:3]"  0.50476464502282392 0.49523535497717608;
	setAttr -s 2 ".wl[584].w[3:4]"  0.78640000522136688 0.21359999477863312;
	setAttr -s 2 ".wl[585].w[21:22]"  0.23299998044967654 0.76700001955032349;
	setAttr ".wl[586].w[5]"  1;
	setAttr ".wl[587].w[5]"  1;
	setAttr ".wl[588].w[4]"  1;
	setAttr ".wl[589].w[4]"  1;
	setAttr ".wl[590].w[4]"  1;
	setAttr ".wl[591].w[4]"  1;
	setAttr -s 2 ".wl[592].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[593].w";
	setAttr ".wl[593].w[4]" 0.49510002136230469;
	setAttr ".wl[593].w[6]" 0.50489997863769531;
	setAttr ".wl[594].w[6]"  1;
	setAttr ".wl[595].w[6]"  1;
	setAttr ".wl[596].w[4]"  1;
	setAttr ".wl[597].w[4]"  1;
	setAttr -s 2 ".wl[598].w";
	setAttr ".wl[598].w[4]" 0.13590002059936523;
	setAttr ".wl[598].w[6]" 0.86409997940063477;
	setAttr -s 2 ".wl[599].w";
	setAttr ".wl[599].w[0]" 0.78640000522136688;
	setAttr ".wl[599].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[600].w";
	setAttr ".wl[600].w[0]" 0.78640000522136688;
	setAttr ".wl[600].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[601].w";
	setAttr ".wl[601].w[0]" 0.48540002107620239;
	setAttr ".wl[601].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[602].w";
	setAttr ".wl[602].w[0]" 0.48540002107620239;
	setAttr ".wl[602].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[603].w";
	setAttr ".wl[603].w[0]" 0.78640000522136688;
	setAttr ".wl[603].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[604].w";
	setAttr ".wl[604].w[0]" 0.48540002107620239;
	setAttr ".wl[604].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[605].w";
	setAttr ".wl[605].w[0]" 0.78640000522136688;
	setAttr ".wl[605].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[606].w";
	setAttr ".wl[606].w[0]" 0.48540002107620239;
	setAttr ".wl[606].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[607].w[20:21]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[608].w[20:21]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[609].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[610].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[611].w[20:21]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[612].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[613].w[20:21]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[614].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[615].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[616].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[617].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[618].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr -s 2 ".wl[619].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr ".wl[620].w[0]"  1;
	setAttr ".wl[621].w[0]"  1;
	setAttr ".wl[622].w[0]"  1;
	setAttr ".wl[623].w[0]"  1;
	setAttr ".wl[624].w[7]"  1;
	setAttr ".wl[625].w[7]"  1;
	setAttr ".wl[626].w[6]"  1;
	setAttr ".wl[627].w[6]"  1;
	setAttr ".wl[628].w[6]"  1;
	setAttr ".wl[629].w[6]"  1;
	setAttr -s 2 ".wl[630].w";
	setAttr ".wl[630].w[3]" 0.20389997959136963;
	setAttr ".wl[630].w[6]" 0.79610002040863037;
	setAttr ".wl[631].w[6]"  1;
	setAttr ".wl[632].w[1]"  1;
	setAttr ".wl[633].w[1]"  1;
	setAttr -s 2 ".wl[634].w[0:1]"  0.93199999630451202 0.068000003695487976;
	setAttr -s 2 ".wl[635].w[0:1]"  0.31069999933242798 0.68930000066757202;
	setAttr ".wl[636].w[0]"  1;
	setAttr -s 2 ".wl[637].w";
	setAttr ".wl[637].w[0]" 0.48540002107620239;
	setAttr ".wl[637].w[20]" 0.51459997892379761;
	setAttr -s 2 ".wl[638].w";
	setAttr ".wl[638].w[0]" 0.78640000522136688;
	setAttr ".wl[638].w[20]" 0.21359999477863312;
	setAttr -s 2 ".wl[639].w[20:21]"  0.48540002107620239 0.51459997892379761;
	setAttr -s 2 ".wl[640].w[20:21]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[641].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr -s 2 ".wl[642].w[21:22]"  0.95149999856948853 0.048500001430511475;
	setAttr -s 2 ".wl[643].w[21:22]"  0.23299998044967651 0.76700001955032349;
	setAttr ".wl[644].w[6]"  1;
	setAttr ".wl[645].w[6]"  1;
	setAttr -s 2 ".wl[646].w[6:7]"  0.56044568496418035 0.4395543150358196;
	setAttr -s 2 ".wl[647].w[6:7]"  0.56140656169338621 0.43859343830661374;
	setAttr ".wl[648].w[6]"  1;
	setAttr ".wl[649].w[6]"  1;
	setAttr ".wl[650].w[6]"  1;
	setAttr -s 2 ".wl[651].w[6:7]"  0.59473331795863738 0.40526668204136257;
	setAttr ".wl[652].w[6]"  1;
	setAttr ".wl[653].w[6]"  1;
	setAttr ".wl[654].w[6]"  1;
	setAttr ".wl[655].w[6]"  1;
	setAttr ".wl[656].w[6]"  1;
	setAttr ".wl[657].w[7]"  1;
	setAttr ".wl[658].w[7]"  1;
	setAttr -s 2 ".wl[659].w[6:7]"  0.60801051208742984 0.39198948791257027;
	setAttr ".wl[660].w[6]"  1;
	setAttr ".wl[661].w[6]"  1;
	setAttr ".wl[662].w[6]"  1;
	setAttr ".wl[663].w[6]"  1;
	setAttr ".wl[664].w[6]"  1;
	setAttr ".wl[665].w[6]"  1;
	setAttr -s 2 ".wl[666].w[6:7]"  0.5175857830159476 0.48241421698405246;
	setAttr ".wl[667].w[7]"  1;
	setAttr ".wl[668].w[7]"  1;
	setAttr ".wl[669].w[7]"  1;
	setAttr ".wl[670].w[7]"  1;
	setAttr ".wl[671].w[7]"  1;
	setAttr ".wl[672].w[7]"  1;
	setAttr ".wl[673].w[7]"  1;
	setAttr ".wl[674].w[7]"  1;
	setAttr ".wl[675].w[7]"  1;
	setAttr -s 2 ".wl[676].w[6:7]"  0.71051273844350138 0.28948726155649868;
	setAttr -s 2 ".wl[677].w[6:7]"  0.68189285896711371 0.31810714103288634;
	setAttr -s 2 ".wl[678].w[6:7]"  0.61647873025412203 0.38352126974587797;
	setAttr -s 2 ".wl[679].w[6:7]"  0.61610481221190139 0.38389518778809856;
	setAttr -s 2 ".wl[680].w[6:7]"  0.54128346272992323 0.45871653727007677;
	setAttr ".wl[681].w[7]"  1;
	setAttr -s 2 ".wl[682].w[6:7]"  0.51501716980958101 0.4849828301904191;
	setAttr ".wl[683].w[7]"  1;
	setAttr ".wl[684].w[2]"  0.49910089209698344;
	setAttr ".wl[685].w[2]"  0.39500001072883606;
	setAttr ".wl[686].w[2]"  0.61159998178482056;
	setAttr ".wl[687].w[2]"  0.61159998178482056;
	setAttr ".wl[688].w[6]"  1;
	setAttr ".wl[689].w[6]"  1;
	setAttr ".wl[690].w[6]"  1;
	setAttr ".wl[691].w[6]"  1;
	setAttr ".wl[692].w[6]"  1;
	setAttr ".wl[693].w[6]"  1;
	setAttr ".wl[694].w[6]"  1;
	setAttr ".wl[695].w[6]"  1;
	setAttr ".wl[696].w[6]"  1;
	setAttr ".wl[697].w[6]"  1;
	setAttr ".wl[698].w[6]"  1;
	setAttr ".wl[699].w[6]"  1;
	setAttr ".wl[700].w[6]"  1;
	setAttr ".wl[701].w[6]"  1;
	setAttr ".wl[702].w[2]"  0.23299999535083771;
	setAttr ".wl[703].w[2]"  0.23299999535083771;
	setAttr ".wl[704].w[1]"  1;
	setAttr ".wl[705].w[1]"  1;
	setAttr ".wl[706].w[1]"  1;
	setAttr ".wl[707].w[1]"  1;
	setAttr ".wl[708].w[1]"  1;
	setAttr ".wl[709].w[1]"  1;
	setAttr ".wl[710].w[1]"  1;
	setAttr ".wl[711].w[1]"  1;
	setAttr ".wl[712].w[1]"  1;
	setAttr ".wl[713].w[1]"  1;
	setAttr ".wl[714].w[1]"  1;
	setAttr ".wl[715].w[1]"  1;
	setAttr -s 2 ".wl[716].w[1:2]"  0.86217411044362369 0.13782588955637629;
	setAttr ".wl[717].w[1]"  1;
	setAttr ".wl[718].w[1]"  1;
	setAttr ".wl[719].w[1]"  1;
	setAttr ".wl[720].w[1]"  1;
	setAttr ".wl[721].w[1]"  1;
	setAttr ".wl[722].w[6]"  1;
	setAttr ".wl[723].w[6]"  1;
	setAttr ".wl[724].w[6]"  1;
	setAttr -s 2 ".wl[725].w[6:7]"  0.99999976170570903 2.3829429096622334e-07;
	setAttr ".wl[726].w[6]"  1;
	setAttr ".wl[727].w[6]"  1;
	setAttr ".wl[728].w[6]"  1;
	setAttr -s 2 ".wl[729].w[6:7]"  0.83691783790223528 0.16308216209776474;
	setAttr ".wl[730].w[6]"  1;
	setAttr ".wl[731].w[6]"  1;
	setAttr ".wl[732].w[6]"  1;
	setAttr ".wl[733].w[6]"  1;
	setAttr ".wl[734].w[6]"  1;
	setAttr ".wl[735].w[6]"  1;
	setAttr ".wl[736].w[6]"  1;
	setAttr ".wl[737].w[6]"  1;
	setAttr ".wl[738].w[6]"  1;
	setAttr ".wl[739].w[6]"  1;
	setAttr ".wl[740].w[6]"  1;
	setAttr ".wl[741].w[6]"  1;
	setAttr ".wl[742].w[6]"  1;
	setAttr ".wl[743].w[6]"  1;
	setAttr ".wl[744].w[6]"  1;
	setAttr ".wl[745].w[6]"  1;
	setAttr ".wl[746].w[6]"  1;
	setAttr ".wl[747].w[6]"  1;
	setAttr ".wl[748].w[14]"  1;
	setAttr ".wl[749].w[14]"  1;
	setAttr ".wl[750].w[14]"  1;
	setAttr ".wl[751].w[14]"  1;
	setAttr ".wl[752].w[14]"  1;
	setAttr ".wl[753].w[14]"  1.0000000000000213;
	setAttr ".wl[754].w[14]"  1;
	setAttr ".wl[755].w[14]"  1;
	setAttr ".wl[756].w[14]"  1;
	setAttr ".wl[757].w[14]"  1;
	setAttr ".wl[758].w[15]"  1;
	setAttr ".wl[759].w[15]"  1;
	setAttr ".wl[760].w[15]"  1;
	setAttr ".wl[761].w[15]"  1;
	setAttr ".wl[762].w[14]"  1;
	setAttr ".wl[763].w[14]"  1;
	setAttr ".wl[764].w[14]"  1;
	setAttr ".wl[765].w[14]"  1;
	setAttr ".wl[766].w[14]"  1;
	setAttr ".wl[767].w[19]"  1;
	setAttr ".wl[768].w[19]"  1;
	setAttr ".wl[769].w[19]"  1;
	setAttr ".wl[770].w[19]"  1;
	setAttr ".wl[771].w[15]"  1;
	setAttr ".wl[772].w[15]"  1;
	setAttr ".wl[773].w[15]"  1;
	setAttr ".wl[774].w[15]"  1;
	setAttr ".wl[775].w[15]"  1;
	setAttr ".wl[776].w[15]"  1;
	setAttr ".wl[777].w[15]"  1;
	setAttr ".wl[778].w[15]"  1;
	setAttr ".wl[779].w[15]"  1;
	setAttr ".wl[780].w[15]"  1;
	setAttr ".wl[781].w[16]"  0.9999996990561435;
	setAttr -s 2 ".wl[782].w[15:16]"  0.5049000084400177 0.4950999915599823;
	setAttr -s 2 ".wl[783].w[15:16]"  0.50490006746053595 0.49509993253946405;
	setAttr ".wl[784].w[16]"  1;
	setAttr ".wl[785].w[16]"  1;
	setAttr -s 2 ".wl[786].w[15:16]"  0.50490004422542978 0.49509995577457022;
	setAttr -s 2 ".wl[787].w[15:16]"  0.31070008150339223 0.68929991849660865;
	setAttr ".wl[788].w[16]"  1;
	setAttr -s 2 ".wl[789].w[15:16]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[790].w[16:17]"  0.87379999458789825 0.12620000541210175;
	setAttr -s 2 ".wl[791].w[15:16]"  0.31069999933242798 0.68930000066757202;
	setAttr -s 2 ".wl[792].w[15:16]"  0.50490051011442283 0.49509948988557717;
	setAttr ".wl[793].w[16]"  1;
	setAttr ".wl[794].w[16]"  1;
	setAttr -s 2 ".wl[795].w[16:17]"  0.63109971773003137 0.36890028226996863;
	setAttr -s 2 ".wl[796].w[16:17]"  0.63109999026546992 0.36890000973453008;
	setAttr -s 2 ".wl[797].w[16:17]"  0.63109999895095825 0.36890000104904175;
	setAttr -s 2 ".wl[798].w[16:17]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[799].w[16:17]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[800].w[15:16]"  0.50490015599131144 0.49509984400868856;
	setAttr -s 2 ".wl[801].w";
	setAttr ".wl[801].w[0]" 3.812214774967515e-07;
	setAttr ".wl[801].w[16]" 0.9999996187785225;
	setAttr -s 2 ".wl[802].w[16:17]"  0.63110039274631125 0.36889960725368875;
	setAttr -s 2 ".wl[803].w[16:17]"  0.6310992746234021 0.3689007253765979;
	setAttr ".wl[804].w[19]"  1;
	setAttr ".wl[805].w[19]"  1;
	setAttr -s 2 ".wl[806].w[14:15]"  0.20389997959136963 0.79610002040863037;
	setAttr -s 2 ".wl[807].w[14:15]"  0.20389997959136963 0.79610002040863037;
	setAttr -s 2 ".wl[808].w[14:15]"  0.20389997959136966 0.79610002040863037;
	setAttr -s 2 ".wl[809].w[14:15]"  0.20389997959136966 0.79610002040863037;
	setAttr -s 2 ".wl[810].w[14:15]"  0.20389982509945129 0.79610017490054863;
	setAttr -s 2 ".wl[811].w[14:15]"  0.20389990667105451 0.79610009332894549;
	setAttr ".wl[812].w[15]"  1;
	setAttr ".wl[813].w[15]"  1;
	setAttr ".wl[814].w[15]"  1;
	setAttr ".wl[815].w[15]"  1;
	setAttr ".wl[816].w[15]"  1;
	setAttr ".wl[817].w[15]"  1;
	setAttr ".wl[818].w[15]"  1;
	setAttr ".wl[819].w[15]"  1;
	setAttr -s 3 ".wl[820].w";
	setAttr ".wl[820].w[0]" 8.2756280761486778e-07;
	setAttr ".wl[820].w[17]" 0.7475994925856746;
	setAttr ".wl[820].w[18]" 0.25239967985151779;
	setAttr -s 2 ".wl[821].w[17:18]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[822].w[18:19]"  0.99999717921017606 2.8207898239429596e-06;
	setAttr -s 2 ".wl[823].w[18:19]"  0.99999923274516789 7.6725483211248502e-07;
	setAttr -s 2 ".wl[824].w[17:18]"  0.74759998917579651 0.25240001082420349;
	setAttr ".wl[825].w[18]"  1;
	setAttr -s 2 ".wl[826].w[17:18]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[827].w[17:18]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[828].w[18:19]"  0.99999936814306178 6.3185690980276373e-07;
	setAttr -s 2 ".wl[829].w[18:19]"  0.99999914247989352 8.5752010647865973e-07;
	setAttr -s 2 ".wl[830].w[18:19]"  0.99999968922205507 3.1077794495106817e-07;
	setAttr -s 2 ".wl[831].w[17:18]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 3 ".wl[832].w";
	setAttr ".wl[832].w[0]" 3.7069091685104638e-07;
	setAttr ".wl[832].w[17]" 0.74759976673775808;
	setAttr ".wl[832].w[18]" 0.25239986257132502;
	setAttr -s 2 ".wl[833].w[18:19]"  0.99999982133152721 1.786684727838109e-07;
	setAttr -s 2 ".wl[834].w[17:18]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[835].w[18:19]"  0.9999996051222656 3.9487773443044958e-07;
	setAttr -s 2 ".wl[836].w[16:17]"  0.74759998917579651 0.25240001082420349;
	setAttr -s 2 ".wl[837].w[18:19]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[838].w[18:19]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[839].w[18:19]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[840].w[18:19]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[841].w[18:19]"  0.62139999866485596 0.37860000133514404;
	setAttr ".wl[842].w[19]"  1;
	setAttr ".wl[843].w[19]"  1;
	setAttr -s 2 ".wl[844].w[18:19]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[845].w[18:19]"  0.62139999866485596 0.37860000133514404;
	setAttr -s 2 ".wl[846].w[18:19]"  0.62139999866485596 0.37860000133514404;
	setAttr ".wl[847].w[19]"  1;
	setAttr -s 2 ".wl[848].w[14:15]"  0.20389970006349498 0.796100299936505;
	setAttr ".wl[849].w[15]"  1;
	setAttr ".wl[850].w[15]"  1;
	setAttr -s 2 ".wl[851].w[14:15]"  0.99999997569322652 2.4306773482862809e-08;
	setAttr ".wl[852].w[14]"  1;
	setAttr -s 2 ".wl[853].w[14:15]"  0.79609951133725865 0.20390048866274135;
	setAttr -s 2 ".wl[854].w[14:15]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[855].w[14:15]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[856].w[14:15]"  0.79610000550746918 0.20389999449253082;
	setAttr -s 2 ".wl[857].w[14:15]"  0.79609998895189671 0.20390001104810326;
	setAttr -s 2 ".wl[858].w[14:15]"  0.79609838970220825 0.20390161029779172;
	setAttr -s 2 ".wl[859].w[14:15]"  0.7960991230606822 0.20390087693931788;
	setAttr -s 2 ".wl[860].w[14:15]"  0.79609936339785858 0.20390063660214142;
	setAttr -s 2 ".wl[861].w[14:15]"  0.20389997959136963 0.79610002040863037;
	setAttr ".wl[862].w[30]"  1;
	setAttr ".wl[863].w[30]"  1;
	setAttr ".wl[864].w[30]"  1;
	setAttr ".wl[865].w[30]"  1;
	setAttr ".wl[866].w[30]"  1;
	setAttr ".wl[867].w[30]"  1;
	setAttr ".wl[868].w[30]"  1;
	setAttr ".wl[869].w[30]"  1;
	setAttr ".wl[870].w[30]"  1;
	setAttr ".wl[871].w[30]"  1;
	setAttr ".wl[872].w[34]"  1;
	setAttr ".wl[873].w[34]"  1;
	setAttr ".wl[874].w[34]"  1;
	setAttr ".wl[875].w[34]"  1;
	setAttr ".wl[876].w[30]"  1;
	setAttr ".wl[877].w[30]"  1;
	setAttr -s 2 ".wl[878].w";
	setAttr ".wl[878].w[30]" 0.99999999999692024;
	setAttr ".wl[878].w[36]" 3.0798345416974085e-12;
	setAttr ".wl[879].w[30]"  1;
	setAttr ".wl[880].w[30]"  1;
	setAttr ".wl[881].w[34]"  1;
	setAttr ".wl[882].w[34]"  1;
	setAttr ".wl[883].w[30]"  1;
	setAttr ".wl[884].w[30]"  1;
	setAttr ".wl[885].w[30]"  1;
	setAttr ".wl[886].w[30]"  1;
	setAttr ".wl[887].w[30]"  1;
	setAttr ".wl[888].w[30]"  1;
	setAttr -s 2 ".wl[889].w";
	setAttr ".wl[889].w[30]" 0.99764517578193024;
	setAttr ".wl[889].w[36]" 0.0023548242180697746;
	setAttr ".wl[890].w[30]"  0.99999999999999989;
	setAttr ".wl[891].w[30]"  1;
	setAttr ".wl[892].w[30]"  1;
	setAttr -s 2 ".wl[893].w[30:31]"  0.83528375564337254 0.16471624435662741;
	setAttr ".wl[894].w[30]"  1;
	setAttr ".wl[895].w[30]"  1;
	setAttr -s 2 ".wl[896].w[30:31]"  0.8355542513641474 0.16444574863585251;
	setAttr -s 2 ".wl[897].w[30:31]"  0.9999776259049532 2.237409504675385e-05;
	setAttr -s 2 ".wl[898].w[30:31]"  0.83586330236496631 0.1641366976350338;
	setAttr -s 2 ".wl[899].w[30:31]"  0.99949074451807773 0.00050925548192229028;
	setAttr ".wl[900].w[30]"  1;
	setAttr -s 2 ".wl[901].w[30:31]"  0.83211483322875035 0.16788516677124959;
	setAttr -s 2 ".wl[902].w[30:31]"  0.83208925182938498 0.16791074817061502;
	setAttr ".wl[903].w[30]"  0.99999999999999989;
	setAttr -s 2 ".wl[904].w[30:31]"  0.83662735481021799 0.16337264518978203;
	setAttr -s 2 ".wl[905].w[30:31]"  0.99978394021079053 0.00021605978920960365;
	setAttr -s 2 ".wl[906].w[30:31]"  0.83329969666081838 0.16670030333918159;
	setAttr -s 2 ".wl[907].w[30:31]"  0.99932942981625672 0.00067057018374324913;
	setAttr -s 2 ".wl[908].w[30:31]"  0.8346267026865577 0.16537329731344222;
	setAttr -s 2 ".wl[909].w[30:31]"  0.33271187974637029 0.66728812025362971;
	setAttr -s 2 ".wl[910].w[30:31]"  0.33472984043395471 0.66527015956604529;
	setAttr -s 2 ".wl[911].w[30:31]"  0.33326295518527216 0.66673704481472784;
	setAttr -s 2 ".wl[912].w[30:31]"  0.32470770011590527 0.67529229988409489;
	setAttr -s 2 ".wl[913].w[30:31]"  0.329536751056766 0.67046324894323395;
	setAttr -s 2 ".wl[914].w[30:31]"  0.3328241576533858 0.6671758423466142;
	setAttr -s 2 ".wl[915].w[30:31]"  0.33009999990463257 0.66990000009536743;
	setAttr -s 2 ".wl[916].w[30:31]"  0.32879840358561163 0.67120159641438826;
	setAttr ".wl[917].w[31]"  1;
	setAttr ".wl[918].w[31]"  1;
	setAttr ".wl[919].w[31]"  1;
	setAttr ".wl[920].w[31]"  1;
	setAttr ".wl[921].w[31]"  1;
	setAttr ".wl[922].w[31]"  1;
	setAttr ".wl[923].w[31]"  1;
	setAttr ".wl[924].w[31]"  1;
	setAttr -s 2 ".wl[925].w[31:32]"  0.52792733397252078 0.47207266602747922;
	setAttr -s 2 ".wl[926].w[31:32]"  0.53116760620210313 0.46883239379789687;
	setAttr ".wl[927].w[31]"  1;
	setAttr ".wl[928].w[31]"  1;
	setAttr ".wl[929].w[31]"  1;
	setAttr ".wl[930].w[31]"  1;
	setAttr ".wl[931].w[31]"  1;
	setAttr ".wl[932].w[31]"  1;
	setAttr -s 2 ".wl[933].w[31:32]"  0.53708448922199492 0.46291551077800508;
	setAttr -s 2 ".wl[934].w[31:32]"  0.53936183351972844 0.46063816648027156;
	setAttr ".wl[935].w[31]"  1;
	setAttr -s 2 ".wl[936].w[31:32]"  0.53101166572620973 0.46898833427379027;
	setAttr ".wl[937].w[31]"  1;
	setAttr ".wl[938].w[31]"  1;
	setAttr ".wl[939].w[31]"  1;
	setAttr -s 2 ".wl[940].w[31:32]"  0.53957050865950162 0.46042949134049832;
	setAttr -s 2 ".wl[941].w[32:33]"  0.78640000522136688 0.21359999477863312;
	setAttr ".wl[942].w[32]"  1;
	setAttr ".wl[943].w[32]"  1;
	setAttr -s 2 ".wl[944].w[32:33]"  0.78640000522136688 0.21359999477863312;
	setAttr ".wl[945].w[32]"  1;
	setAttr -s 2 ".wl[946].w[32:33]"  0.78640000522136688 0.21359999477863312;
	setAttr -s 2 ".wl[947].w[31:32]"  0.006309954844045204 0.99369004515595483;
	setAttr -s 3 ".wl[948].w";
	setAttr ".wl[948].w[31]" 0.0037186252376619428;
	setAttr ".wl[948].w[32]" 0.81492736393623744;
	setAttr ".wl[948].w[35]" 0.18135401082610056;
	setAttr -s 2 ".wl[949].w";
	setAttr ".wl[949].w[32]" 0.50764958870584465;
	setAttr ".wl[949].w[35]" 0.49235041129415535;
	setAttr -s 2 ".wl[950].w";
	setAttr ".wl[950].w[32]" 0.51101105192018892;
	setAttr ".wl[950].w[35]" 0.48898894807981108;
	setAttr ".wl[951].w[32]"  1;
	setAttr -s 2 ".wl[952].w[32:33]"  0.78640000522136688 0.21359999477863312;
	setAttr ".wl[953].w[32]"  1;
	setAttr -s 2 ".wl[954].w[32:33]"  0.78640000522136688 0.21359999477863312;
	setAttr -s 2 ".wl[955].w[31:32]"  0.0029806317990810302 0.99701936820091908;
	setAttr -s 2 ".wl[956].w";
	setAttr ".wl[956].w[32]" 0.54634918992915749;
	setAttr ".wl[956].w[35]" 0.45365081007084246;
	setAttr ".wl[957].w[30]"  1;
	setAttr ".wl[958].w[30]"  1;
	setAttr ".wl[959].w[30]"  1;
	setAttr ".wl[960].w[30]"  1;
	setAttr -s 2 ".wl[961].w[30:31]"  0.99914025920486405 0.00085974079513584823;
	setAttr -s 2 ".wl[962].w[30:31]"  0.83298237775690831 0.16701762224309172;
	setAttr -s 2 ".wl[963].w[30:31]"  0.3299091476231002 0.6700908523768998;
	setAttr ".wl[964].w[31]"  1;
	setAttr ".wl[965].w[31]"  1;
	setAttr ".wl[966].w[31]"  1;
	setAttr ".wl[967].w[31]"  1;
	setAttr ".wl[968].w[31]"  1;
	setAttr -s 2 ".wl[969].w[31:32]"  0.00018303583967079891 0.99981696416032906;
	setAttr -s 2 ".wl[970].w";
	setAttr ".wl[970].w[32]" 0.53806209294502594;
	setAttr ".wl[970].w[35]" 0.46193790705497412;
	setAttr -s 2 ".wl[971].w";
	setAttr ".wl[971].w[32]" 0.54370000958442688;
	setAttr ".wl[971].w[35]" 0.45629999041557306;
	setAttr -s 3 ".wl[972].w";
	setAttr ".wl[972].w[32]" 0.97416566967942786;
	setAttr ".wl[972].w[33]" 0.00066793245731587277;
	setAttr ".wl[972].w[35]" 0.025166397863256373;
	setAttr -s 2 ".wl[973].w";
	setAttr ".wl[973].w[32]" 0.80347185437836233;
	setAttr ".wl[973].w[35]" 0.19652814562163767;
	setAttr -s 2 ".wl[974].w";
	setAttr ".wl[974].w[32]" 0.81546890585242227;
	setAttr ".wl[974].w[35]" 0.18453109414757765;
	setAttr -s 2 ".wl[975].w[31:32]"  0.53400000929832458 0.46599999070167542;
	setAttr ".wl[976].w[31]"  1;
	setAttr ".wl[977].w[31]"  1;
	setAttr -s 2 ".wl[978].w[30:31]"  0.32872258361961471 0.67127741638038518;
	setAttr -s 2 ".wl[979].w[30:31]"  0.83379765129808414 0.16620234870191586;
	setAttr ".wl[980].w[30]"  1;
	setAttr ".wl[981].w[30]"  1;
	setAttr ".wl[982].w[30]"  1;
	setAttr ".wl[983].w[30]"  1;
	setAttr ".wl[984].w[31]"  1;
	setAttr ".wl[985].w[31]"  1;
	setAttr ".wl[986].w[36]"  1;
	setAttr ".wl[987].w[36]"  1;
	setAttr ".wl[988].w[36]"  1;
	setAttr ".wl[989].w[36]"  1;
	setAttr ".wl[990].w[36]"  1;
	setAttr ".wl[991].w[36]"  1;
	setAttr -s 2 ".wl[992].w[35:36]"  0.87080144143915461 0.12919855856084536;
	setAttr -s 2 ".wl[993].w[35:36]"  0.87316725274921714 0.12683274725078295;
	setAttr -s 2 ".wl[994].w[35:36]"  0.65683911761514902 0.34316088238485098;
	setAttr -s 2 ".wl[995].w[35:36]"  0.34369178633460629 0.65630821366539371;
	setAttr -s 3 ".wl[996].w";
	setAttr ".wl[996].w[32]" 0.0034421903015804363;
	setAttr ".wl[996].w[35]" 0.87153647622945773;
	setAttr ".wl[996].w[36]" 0.12502133346896177;
	setAttr -s 2 ".wl[997].w[35:36]"  0.6649148849187172 0.3350851150812828;
	setAttr -s 3 ".wl[998].w";
	setAttr ".wl[998].w[32]" 0.0042337884768812728;
	setAttr ".wl[998].w[35]" 0.85099707228004229;
	setAttr ".wl[998].w[36]" 0.14476913924307641;
	setAttr -s 2 ".wl[999].w[35:36]"  0.35442476337815526 0.64557523662184468;
	setAttr -s 3 ".wl[1000].w";
	setAttr ".wl[1000].w[0]" 0.0032812316207661008;
	setAttr ".wl[1000].w[35]" 0.87168942196381793;
	setAttr ".wl[1000].w[36]" 0.12502934641541597;
	setAttr -s 2 ".wl[1001].w[35:36]"  0.87072012166676493 0.12927987833323515;
	setAttr -s 2 ".wl[1002].w[35:36]"  0.34547615408257265 0.65452384591742729;
	setAttr -s 2 ".wl[1003].w[35:36]"  0.35413615196541071 0.64586384803458941;
	setAttr -s 2 ".wl[1004].w[35:36]"  0.13543683260324485 0.86456316739675521;
	setAttr -s 2 ".wl[1005].w[35:36]"  0.1355343631738995 0.86446563682610045;
	setAttr -s 2 ".wl[1006].w[35:36]"  0.17371412946111325 0.8262858705388868;
	setAttr -s 2 ".wl[1007].w[35:36]"  0.15633819573503516 0.84366180426496484;
	setAttr -s 2 ".wl[1008].w[35:36]"  0.1411788000133353 0.85882119998666473;
	setAttr -s 2 ".wl[1009].w[35:36]"  0.13537816900113658 0.86462183099886347;
	setAttr -s 2 ".wl[1010].w[32:33]"  0.5599033327877796 0.44009666721222052;
	setAttr -s 2 ".wl[1011].w[32:33]"  0.54188502132653793 0.45811497867346224;
	setAttr -s 2 ".wl[1012].w[33:34]"  0.93117175875381941 0.068828241246180547;
	setAttr -s 2 ".wl[1013].w[33:34]"  0.94030448848575188 0.059695511514248144;
	setAttr -s 2 ".wl[1014].w[32:33]"  0.54190000891685486 0.45809999108314514;
	setAttr -s 2 ".wl[1015].w[33:34]"  0.92772680898335658 0.072273191016643382;
	setAttr -s 2 ".wl[1016].w[32:33]"  0.54190000891685486 0.45809999108314514;
	setAttr -s 2 ".wl[1017].w[33:34]"  0.92957054943680328 0.070429450563196772;
	setAttr -s 2 ".wl[1018].w[32:33]"  0.55408900984183329 0.4459109901581666;
	setAttr -s 2 ".wl[1019].w[33:34]"  0.99088584343075092 0.0091141565692490524;
	setAttr -s 2 ".wl[1020].w[32:33]"  0.62760210388041138 0.37239789611958873;
	setAttr -s 2 ".wl[1021].w[33:34]"  0.99165153229018577 0.008348467709814093;
	setAttr -s 2 ".wl[1022].w[33:34]"  0.73789998888969421 0.26210001111030579;
	setAttr -s 2 ".wl[1023].w[33:34]"  0.73789998888969421 0.26210001111030579;
	setAttr -s 2 ".wl[1024].w[33:34]"  0.73789998888969421 0.26210001111030579;
	setAttr -s 2 ".wl[1025].w[33:34]"  0.73789998888969421 0.26210001111030579;
	setAttr -s 2 ".wl[1026].w[33:34]"  0.73789998888969421 0.26210001111030579;
	setAttr -s 2 ".wl[1027].w[33:34]"  0.73789998888969421 0.26210001111030579;
	setAttr -s 2 ".wl[1028].w[33:34]"  0.11650002002716064 0.88349997997283936;
	setAttr -s 2 ".wl[1029].w[33:34]"  0.11650002002716064 0.88349997997283936;
	setAttr -s 2 ".wl[1030].w[33:34]"  0.11650002002716064 0.88349997997283936;
	setAttr -s 2 ".wl[1031].w[33:34]"  0.11650002002716064 0.88349997997283936;
	setAttr -s 2 ".wl[1032].w[33:34]"  0.11650002002716064 0.88349997997283936;
	setAttr -s 2 ".wl[1033].w[33:34]"  0.11650002002716064 0.88349997997283936;
	setAttr -s 2 ".wl[1034].w";
	setAttr ".wl[1034].w[32]" 0.31114889199402107;
	setAttr ".wl[1034].w[35]" 0.68885110800597893;
	setAttr -s 2 ".wl[1035].w";
	setAttr ".wl[1035].w[32]" 0.30981527033314299;
	setAttr ".wl[1035].w[35]" 0.69018472966685707;
	setAttr -s 3 ".wl[1036].w";
	setAttr ".wl[1036].w[32]" 0.49748147801009879;
	setAttr ".wl[1036].w[35]" 0.50134072032326604;
	setAttr ".wl[1036].w[36]" 0.0011778016666351347;
	setAttr -s 3 ".wl[1037].w";
	setAttr ".wl[1037].w[32]" 0.53848154065459009;
	setAttr ".wl[1037].w[35]" 0.46059057260219322;
	setAttr ".wl[1037].w[36]" 0.00092788674321668541;
	setAttr -s 3 ".wl[1038].w";
	setAttr ".wl[1038].w[32]" 0.24222098077585497;
	setAttr ".wl[1038].w[35]" 0.75706901906233937;
	setAttr ".wl[1038].w[36]" 0.00071000016180563401;
	setAttr -s 2 ".wl[1039].w";
	setAttr ".wl[1039].w[32]" 0.30990214234662961;
	setAttr ".wl[1039].w[35]" 0.69009785765337039;
	setAttr -s 37 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.6159797016822146e-16 2.256619015540728e-16 0.99999999999999978 -0
		 0.58221804658674459 0.81303268460051192 -2.0003632899973227e-16 0 -0.81303268460051159 0.58221804658674459 -6.6940214793038238e-18 -0
		 -1.051906618188353 -4.0107478712468163 7.8470878962051156e-16 1;
	setAttr ".pm[1]" -type "matrix" -2.0570657413739036e-17 2.7679242372047694e-16 0.99999999999999978 -0
		 -0.074113604050625004 0.99724980506121308 -2.000363289997323e-16 0 -0.99724980506121286 -0.074113604050624782 -6.6940214793038223e-18 -0
		 -1.16477339348687 -6.1971506090559636 1.2081276244211171e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.6377833207292071e-17 2.7707212843395771e-16 0.99999999999999978 -0
		 0.059007362823597365 0.99825754749593765 -2.0003632899973227e-16 0 -0.99825754749593743 0.059007362823597559 -6.6940214793038215e-18 -0
		 -3.3916608328939151 -5.7980146504669383 1.3313177006103274e-15 1;
	setAttr ".pm[3]" -type "matrix" -2.0706513233375079e-16 1.8482756490062757e-16 0.99999999999999978 -0
		 -0.74603076225576204 0.66591148193140992 -2.000363289997323e-16 0 -0.66591148193140992 -0.7460307622557617 -6.6940214793038361e-18 -0
		 1.9255419315713889 -6.9085489100782986 1.4100036879942379e-15 1;
	setAttr ".pm[4]" -type "matrix" -1.6847269102896196e-17 2.7704398080316427e-16 0.99999999999999978 -0
		 -0.060698683883211021 0.99815613496829547 -2.0003632899973227e-16 0 -0.99815613496829525 -0.060698683883210799 -6.6940214793038377e-18 -0
		 -3.8594498920819724 -5.9025137715745313 1.4169446521885158e-15 1;
	setAttr ".pm[5]" -type "matrix" 0.99999999999999978 3.4494483256786892e-16 1.1081759232126585e-15 -0
		 -2.6595582108685602e-16 1 4.5310977192514186e-15 0 -1.1169170461044597e-15 -4.3229309021342025e-15 0.99999999999999978 -0
		 -3.8977069257420702e-15 -5.5973806868115554 5.1970467743173288 1;
	setAttr ".pm[6]" -type "matrix" -6.4918427084129001e-17 2.6985699101637535e-16 0.99999999999999967 -0
		 -0.23389328322044967 0.97226227534773701 -2.000363289997323e-16 0 -0.97226227534773679 -0.23389328322044933 -6.6940214793038377e-18 -0
		 -2.6332265658243701 -7.3982588046638185 1.4823714459326349e-15 1;
	setAttr ".pm[7]" -type "matrix" -2.0706513233375128e-16 1.8482756490062713e-16 1 -0
		 -0.74603076225576381 0.66591148193140848 -2.0003632899973232e-16 0 -0.66591148193140837 -0.74603076225576337 -6.69402147930385e-18 -0
		 0.85507718979923975 -8.4085030313063083 1.5898716928784442e-15 1;
	setAttr ".pm[8]" -type "matrix" 0.10044624683868932 0.5387212560397544 -0.83647472154690328 -0
		 -0.98305809907475394 0.18329422752375801 -1.8041124150158779e-16 0 0.15332098792908977 0.82230324968798307 0.54800551111556306 -0
		 5.4521127407108709 -0.87263061283767862 2.9163642210770742 1;
	setAttr ".pm[9]" -type "matrix" -0.22546846845814328 -0.062849047364730751 0.97222115126985631 -0
		 -0.26851204474048995 0.96327632682905762 6.9388939039072284e-16 0 -0.93651761946074474 -0.26105308926742199 -0.23406416433002927 0
		 0.26978728736697133 -4.2212884912864714 -2.7848663448898048 1;
	setAttr ".pm[10]" -type "matrix" 0.071433013881689128 0.41113617047663831 0.90877080380785957 -0
		 -0.98523962533820253 0.17118084198717609 -1.387778780781446e-17 0 -0.15556415136919224 -0.89535700626195258 0.41729561002533572 -0
		 2.9028237587347339 -4.4355370679010244 -0.49583036152611826 1;
	setAttr ".pm[11]" -type "matrix" 0.18384187111993477 0.506756942257928 -0.84225861105512945 -0
		 -0.94005135360420866 0.34103292009261393 1.6653345369377343e-16 0 0.28723791360128009 0.79176634740717522 0.53907367966121644 -0
		 3.5367414389714424 0.54805953960748166 3.5971003873533807 1;
	setAttr ".pm[12]" -type "matrix" 0.30036446814621259 0.12529951330801561 -0.94555868048472613 -0
		 -0.38500192022235247 0.92291577157674631 4.8572257327350579e-16 0 0.8726710191706516 0.36404190766953337 0.32545165809991322 -0
		 3.2101733870184574 -1.5665402751971629 3.1292488046261826 1;
	setAttr ".pm[13]" -type "matrix" 0.99999999999999978 3.2594221893539012e-16 2.1260770921571745e-14 -0
		 -2.2204460492505024e-16 1 8.881784197001205e-16 0 -2.1371793224034257e-14 -7.9445754865150366e-16 1 -0
		 -2.3392181566041756 -2.4916640671893502 2.8187927400880839 1;
	setAttr ".pm[14]" -type "matrix" -0.10044285879464591 -0.53871249006411182 -0.83648077393690434 0
		 -0.98305867567845251 0.18329113501020028 5.5511151231257815e-17 0 0.1533195104691058 0.82230968185690023 -0.54799627264600703 -0
		 5.4445852304425024 -0.91299152975084508 -2.9791090078878644 1;
	setAttr ".pm[15]" -type "matrix" 0.22546738117721868 0.062848424754119045 0.97222144366960528 -0
		 -0.26851077801024492 0.96327667992759658 2.8449465006019617e-16 0 -0.93651824441247233 -0.26105193623796902 0.23406294979980777 -0
		 0.28668791032449187 -4.2165779477376457 2.8577894172838727 1;
	setAttr ".pm[16]" -type "matrix" -0.071419646009903831 -0.41111050045657893 0.90878346737721882 -0
		 -0.9852432255434822 0.17116011953920676 -2.3592239273284567e-16 0 -0.1555474869115398 -0.89537275471932076 -0.41726803067313811 0
		 2.89756585691664 -4.4663024947915684 0.56411338435756031 1;
	setAttr ".pm[17]" -type "matrix" -0.18384717373579459 -0.50677754515084028 -0.8422450572370539 0
		 -0.94005264507730435 0.34102936014830693 -3.05311331771918e-16 0 0.28723029295762648 0.79175469385897845 -0.53909485580902294 -0
		 3.5229163340014704 0.50997608560299101 -3.6603127047581894 1;
	setAttr ".pm[18]" -type "matrix" -0.3003696228312332 -0.12530427185359896 -0.9455564124553657 0
		 -0.38500874633489879 0.9229129239780044 -1.8041124150158789e-16 0 0.87266623340533334 0.36404748894836525 -0.32545824749810515 -0
		 3.1876382478397964 -1.5759248317392576 -3.2001868828688407 1;
	setAttr ".pm[19]" -type "matrix" 1 -3.5796445488825237e-09 -2.1139332506692182e-09 -0
		 3.579644419247109e-09 1.0000000000000002 -4.8508422398881237e-16 0 2.1139331951580716e-09 8.2470736629424743e-16 1 -0
		 2.414227640502701 -2.4916600086420715 2.8187899948964854 1;
	setAttr ".pm[20]" -type "matrix" -9.5952512276608017e-17 2.6033532624872703e-15 -0.99999999999999978 0
		 -0.34570535882735642 0.93834311681711013 2.3984904850287121e-15 0 0.93834311681710969 0.34570535882735665 8.1665081580577085e-16 -0
		 -2.0442575924283539 -4.2186585185802921 -1.0557029337293456e-14 1;
	setAttr ".pm[21]" -type "matrix" 1.7168123162278133e-16 2.5994577605000225e-15 -0.99999999999999978 -0
		 -0.24759826751090275 0.96886278591222597 2.3984904850287129e-15 0 0.96886278591222563 0.247598267510903 8.1665081580577104e-16 -0
		 -4.2526360004745225 -3.8023698683146092 -1.0100383416513334e-14 1;
	setAttr ".pm[22]" -type "matrix" 7.4342939783456315e-16 1.5388077681831e-16 0.99999999999999978 -0
		 0.56920997883030822 0.82219219164377877 -4.7216757779077776e-16 0 -0.8221921916437781 0.56920997883030844 5.1695735074356856e-16 -0
		 3.7674483420431741 -5.453832378247057 -2.7171873972784764e-15 1;
	setAttr ".pm[23]" -type "matrix" -0.10078961290172524 -0.1999286519233423 -0.97461273748665678 0
		 -0.89294792757736541 0.45015997004985708 2.9143354396410354e-16 0 0.43873164071720239 0.87027842412921297 -0.22389732452346225 -0
		 3.0601281866605579 -2.6452608934870385 2.7602396491940238 1;
	setAttr ".pm[24]" -type "matrix" 0.055397333746350363 0.088154019501858277 0.99456523378784012 -0
		 -0.84669610818959251 0.53207678052758334 3.6082248300317588e-16 0 -0.52918506761849726 -0.84209451278883618 0.10411530022306299 -0
		 2.7476362074344305 1.1181151847533175 -2.4866238433935286 1;
	setAttr ".pm[25]" -type "matrix" 0.63612775129841104 0.11741773343557194 0.76259724619413605 -0
		 -0.18151573265482909 0.98338804080524667 4.0245584642661934e-16 0 -0.74992901185832728 -0.13842339786348376 0.64687358896241876 -0
		 -0.16057643892575288 -0.24434737152410488 -2.8730323327898857 1;
	setAttr ".pm[26]" -type "matrix" 0.2569516790992738 -0.058168786125149904 0.96467208259013593 -0
		 0.22079332807809599 0.97532061716965623 7.7576833845682829e-15 0 -0.94086457095814913 0.21299315961910195 0.26345355012071797 -0
		 0.32379030692308547 -0.1468917805288836 -3.0082321081043046 1;
	setAttr ".pm[27]" -type "matrix" -5.666543862685505e-15 1.0001534936866755e-14 0.99999999999999978 -0
		 -0.32955681658703723 0.94413574481693008 -1.1158398884665145e-14 0 -0.94413574481692952 -0.32955681658703706 -1.9846602766327075e-15 -0
		 0.53986866343420115 -0.045063422475659552 -2.9832520007065608 1;
	setAttr ".pm[28]" -type "matrix" 1.609823385706476e-15 -9.0861227609059643e-16 1 -0
		 5.5511151231258005e-16 1.0000000000000004 1.0130785099704548e-15 0 -0.99999999999999978 6.5052844696349247e-16 1.7763568394002505e-15 -0
		 0.97654879703363651 -0.21114113300029025 -2.2215339396735221 1;
	setAttr ".pm[29]" -type "matrix" 1.7847855831613155e-15 -4.8129826882040699e-16 1 -0
		 -0.24783324998263154 0.96880270447756689 1.0130785099704549e-15 0 -0.96880270447756622 -0.24783324998263126 1.7763568394002509e-15 -0
		 0.27026332272580489 -0.14880315126265981 -2.221533939673523 1;
	setAttr ".pm[30]" -type "matrix" -0.10078961290172517 -0.19992865192334144 -0.97461273748665667 0
		 -0.89294792757736519 0.45015997004985697 6.5225602696727888e-16 0 0.43873164071720216 0.8702784241292133 -0.22389732452346148 -0
		 2.5622851622169036 -3.6328036327953801 -2.0538210918509368 1;
	setAttr ".pm[31]" -type "matrix" 0.055397333746350419 0.088154019501855932 0.99456523378783968 -0
		 -0.84669610818959207 0.53207678052758356 1.5681900222830309e-15 0 -0.5291850676184976 -0.84209451278883563 0.10411530022306108 -0
		 2.9938575956643199 1.509927897861306 1.9338822561736204 1;
	setAttr ".pm[32]" -type "matrix" 0.63612775129841048 0.11741773343557291 0.76259724619413538 -0
		 -0.18151573265482907 0.98338804080524622 -1.0963452368173401e-15 0 -0.74992901185832672 -0.13842339786348234 0.64687358896241831 -0
		 2.7933458454425573 0.30089365074191421 0.66817044096023193 1;
	setAttr ".pm[33]" -type "matrix" 0.25695167909927352 -0.058168786125101311 0.96467208259013848 -0
		 0.2207933280780959 0.9753206171696559 -4.142519660632609e-14 0 -0.94086457095814846 0.21299315961911541 0.26345355012070693 -0
		 1.7679685941075345 -0.47382518291425352 2.4136343400464231 1;
	setAttr ".pm[34]" -type "matrix" -5.720723803164826e-15 -3.0774610038389709e-14 0.99999999999999911 -0
		 -0.3295568165870375 0.9441357448169293 2.7182280941279435e-14 0 -0.94413574481692852 -0.32955681658703684 -1.5485319224944428e-14 0
		 0.53986821086382619 -0.045063171567038346 2.9832499999999991 1;
	setAttr ".pm[35]" -type "matrix" 1.4988010832439594e-15 1.0646030644167253e-15 0.99999999999999933 -0
		 4.2082222143748157e-16 0.99999999999999978 -1.1016368182000948e-15 0 -0.99999999999999911 8.357672189511953e-16 1.7208456881689891e-15 -0
		 0.97654900000000222 -0.211140999999998 2.2215299999999973 1;
	setAttr ".pm[36]" -type "matrix" 1.1881985053953885e-15 3.6500242960636384e-08 0.99999999999999867 -0
		 -0.2478332499826314 0.96880270447756534 -3.5361533836911449e-08 0 -0.96880270447756545 -0.24783324998263068 9.0459752112646936e-09 -0
		 0.27026283501492715 -0.14880305765636972 2.2215300054313478 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 37 ".ma";
	setAttr -s 37 ".dpf[0:36]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 37 ".lw";
	setAttr -s 37 ".lw";
	setAttr ".mmi" yes;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 37 ".ifcl";
	setAttr -s 37 ".ifcl";
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 37 ".wm";
	setAttr -s 37 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -5.5511151231257815e-17 1.3877787807814452e-16
		 -5.5511151231257815e-17 0 0 3.8733081254488781 1.479895329214544 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0.21619858660470492 0.67324451067210922 0.21619858660470476 0.67324451067210944 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 1.6865356791630956e-17 2.7920684757187167e-16
		 3.3306690738754691e-16 0 3.8138178132593161 0 -4.2341883480060515e-16 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.3408471736347562 0.94011871815489256 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -4.8214633607303902e-17 1.1122564623873177e-16
		 -2.7755575615628901e-17 0 1.4266859291908407 -8.8817841970012523e-16 -1.231900761892107e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0665623905939806 0.99778226490473076 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -1.0066222810885591e-16 3.1166069039568562e-16
		 -1.5686229754587011e-32 0 0.82956954297453089 0 -7.8685987383910278e-17 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.43547109264781048 0.90020271465271762 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 3.275254038158341e-16 2.121863084019174e-16
		 6.6613381477509392e-16 0 0.50886474527435199 1.7763568394002505e-15 -6.9409641942780746e-18 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.38081050639328506 0.92465310155781655 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.98826058853732179 1.833393919383041e-15
		 -8.6252919077548201e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.021470124776676831 -0.70678075365849724 0.021470124776676806 0.70678075365849802 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 5.220205207878238e-16 3.6751802725493337e-16
		 3.3306690738754706e-16 0 -0.12406415496461598 0.67216546112600639 -7.236775793839726e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.2983854914617407 0.95444544028725675 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4533180487879007 2.7122404864193808e-15
		 -1.0750024694580877e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.29838549146174181 0.95444544028725642 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -2.2204460492503131e-16 -3.8857805861880479e-16
		 4.3140830754274083e-32 0 0.13796152731986044 -0.5654201313779037 2.3619253474156467 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.6392548591380468 -0.71385613805713521 -0.17444221812221353 0.22656688143493128 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -8.3266726846886802e-17 -1.9428902930940239e-16
		 5.5511151231257837e-16 0 1.404783027238989 -1.3322676295501878e-15 8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.72649750037049232 0.66554850788985753 0.090450801753539839 0.14513861671916506 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 8.3266726846887665e-17 7.4940054162198047e-16
		 2.484124017598787e-15 0 1.9345591987237385 0 -4.4408920985006262e-16 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.24263577922105936 -0.21954897905050555 -0.5047103668245746 0.79887018348382055 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48865648332582751 -5.3067717488526658e-16
		 -2.2059094205333722e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.84812740648576679 -0.22563993409333083 0.042124459638840483 0.47748513318240576 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48519113885542603 -2.1998946259863143e-16
		 -3.2288837576725046e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.085849855510574904 -0.081890905592976293 0.39923828365291947 0.90913831442517412 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49361722076433434 3.8971471217139941e-16
		 1.4409260942954551e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.1140142956711514 0.56945141261802545 0.15982132083748452 0.79823741734881637 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -1.9428902930940239e-16 8.3266726846886741e-17
		 -8.0889057664263906e-33 0 0.13796166775071073 -0.56542186666057859 -2.4369376434632151 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.63925703534787948 0.71385630887923968 -0.17443934622992491 0.22656241417857481 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -3.6082248300317592e-16 -8.3266726846886605e-17
		 7.7715611723760958e-16 0 1.4047788134791919 -1.3322676295501878e-15 -4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.72649872719430297 -0.66554840863146347 0.090448573259062581 0.14513431967864993 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 6.9388939039072254e-16 5.8286708792820758e-16
		 -1.1241008124329708e-15 0 1.9345592152735966 0 8.8817841970012523e-16 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.24262687387648735 0.21953657055922088 -0.50472205447130947 0.79886891414692052 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48866106106380014 -4.3177747552300196e-16
		 -5.0482338252038611e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.84813141224755106 0.22562972962988875 0.04212837620852225 0.47748249453163327 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48518559294356667 1.8349587340188661e-16
		 -2.7580861294439118e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.08585684212184827 0.081896653123147894 0.39923620948981031 0.90913804776848883 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49362514958214926 3.5430677028915758e-16
		 7.7250846991313528e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.15982466854966684 -0.79823881017689202 -0.11401584587115314 -0.56944821023571091 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -7.7608305630256195e-17 3.2687642608103374e-16
		 -8.3266726846886721e-16 0 -1.903936474231317 0.59903671428453276 1.1161975819235065e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.13382914097224904 0.99100442028612057 1.1609174444691704e-15 1.5677486512941201e-16 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -2.7331942354807931e-15 -2.3468123489934063e-15
		 5.5511151231258152e-16 0 1.7957749427995298 4.4408920985006262e-15 -4.5664592078012662e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.051372296931931995 0.99867957178863798 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.176907074638978 -5.2718271718046663e-17
		 -3.972841972904782e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.17673875924712731 0.9842577970124422 1.1530140764424024e-15 2.0704156764970649e-16 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 -0 0 0 -0.050274250484026228
		 0.09752146371128026 2.4697304115629732 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.23734605678468984 0.9648695342231961 -0.085577817292495362 0.073280750843067802 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 9.162013744794366e-31 -5.9795670917698022e-17
		 9.3530009765864901e-16 0 2.4546066612634725 2.6514344474473322e-17 -9.0077760215760326e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.86917927391837413 -0.49075546958458893 0.0028558565520185909 0.060649014393408231 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 1.1102230246251565e-16 0 -8.3266726846886741e-17 0 1.795624909678063
		 -1.4293773845549981e-15 -1.8602349829445004e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.16569788964600812 -0.24421944267962378 0.38401435326506123 0.87489087872175819 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.76778628708554608 4.5956587490440075e-16
		 -4.2471223454945964e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0043446796973673416 0.21666198369992759 0.19641397676959277 0.9562741543653126 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.67342407832757523 7.498379477533941e-17
		 5.9243243629454175e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0075188740900409209 0.13269297357942633 -0.27317139617549863 0.95273995906889331 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48193523871086907 0.088956570872219171
		 -0.54719304293396587 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.03139954163258285 0.34309684593157536 0.085557281295285878 0.93486821248474794 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.75159532764086556 3.4827307230439149e-17
		 4.1825721348124537e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.1248945465631584 0.99217002184040159 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 -0 0 0 -0.050272801064717987
		 0.097525730619827833 -2.4697299999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.23734605678468987 0.96486953422319599 -0.085577817292494932 0.073280750843067691 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 -1.8723654309588632e-16 -4.2692506523799847e-16
		 -1.6462559270738859e-15 0 2.4047381265540468 -0.098929439510922812 -0.48223645900676138 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.86917927391837402 -0.4907554695845891 0.002855856552017845 0.060649014393408841 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 2.775557561562892e-17 0 2.775557561562892e-17 0 1.7846054435546375
		 -0.017536033575973997 -0.19786184438283594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.16569788964600965 -0.24421944267962387 0.38401435326506089 0.87489087872175797 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.14639994782071719 -0.11469664214986353
		 -0.74491699606645867 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0043446796973906979 0.21666198369993264 0.19641397676958713 0.95627415436531238 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.58449989706750038 0.020130326499324669
		 -0.33385155343498374 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0075188740900843237 0.13269297357942497 -0.27317139617549946 0.95273995906889297 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.60950112219088926 0.11250293694626026
		 -0.3942584629497653 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.031399541632582614 0.34309684593157547 0.085557281295285212 0.93486821248474794 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.75159599999999915 -6.6613381477509392e-16
		 -1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.8107222731787877e-08 -2.2793405594031748e-09 -0.12489454656315838 0.99217002184040137 1
		 1 1 yes;
	setAttr -s 37 ".m";
	setAttr -s 37 ".p";
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Fighter_Frank_UVModel_Draft1_DoneRN.phl[1]" "groupParts2.ig";
connectAttr "Frank_MeshShapeDeformed.iog" "Fighter_Frank_UVModel_Draft1_DoneRN.phl[2]"
		;
connectAttr "Frank_JT_Body_parentConstraint1.ctx" "Frank_JT_Body.tx";
connectAttr "Frank_JT_Body_parentConstraint1.cty" "Frank_JT_Body.ty";
connectAttr "Frank_JT_Body_parentConstraint1.ctz" "Frank_JT_Body.tz";
connectAttr "Frank_JT_Body_parentConstraint1.crx" "Frank_JT_Body.rx";
connectAttr "Frank_JT_Body_parentConstraint1.cry" "Frank_JT_Body.ry";
connectAttr "Frank_JT_Body_parentConstraint1.crz" "Frank_JT_Body.rz";
connectAttr "Frank_JT_Body.s" "Frank_JT_chest.is";
connectAttr "Frank_JT_Shoulder_parentConstraint1.ctx" "Frank_JT_chest.tx";
connectAttr "Frank_JT_Shoulder_parentConstraint1.cty" "Frank_JT_chest.ty";
connectAttr "Frank_JT_Shoulder_parentConstraint1.ctz" "Frank_JT_chest.tz";
connectAttr "Frank_JT_Shoulder_parentConstraint1.crx" "Frank_JT_chest.rx";
connectAttr "Frank_JT_Shoulder_parentConstraint1.cry" "Frank_JT_chest.ry";
connectAttr "Frank_JT_Shoulder_parentConstraint1.crz" "Frank_JT_chest.rz";
connectAttr "Frank_JT_chest.s" "Frank_JT_Neck.is";
connectAttr "Frank_JT_Neck_parentConstraint1.ctx" "Frank_JT_Neck.tx";
connectAttr "Frank_JT_Neck_parentConstraint1.cty" "Frank_JT_Neck.ty";
connectAttr "Frank_JT_Neck_parentConstraint1.ctz" "Frank_JT_Neck.tz";
connectAttr "Frank_JT_Neck_parentConstraint1.crx" "Frank_JT_Neck.rx";
connectAttr "Frank_JT_Neck_parentConstraint1.cry" "Frank_JT_Neck.ry";
connectAttr "Frank_JT_Neck_parentConstraint1.crz" "Frank_JT_Neck.rz";
connectAttr "Frank_JT_Neck.s" "Frank_JT_Head.is";
connectAttr "Frank_JT_Head_parentConstraint1.ctx" "Frank_JT_Head.tx";
connectAttr "Frank_JT_Head_parentConstraint1.cty" "Frank_JT_Head.ty";
connectAttr "Frank_JT_Head_parentConstraint1.ctz" "Frank_JT_Head.tz";
connectAttr "Frank_JT_Head_parentConstraint1.crx" "Frank_JT_Head.rx";
connectAttr "Frank_JT_Head_parentConstraint1.cry" "Frank_JT_Head.ry";
connectAttr "Frank_JT_Head_parentConstraint1.crz" "Frank_JT_Head.rz";
connectAttr "Frank_JT_Head.s" "Frank_JT_LowerJaw.is";
connectAttr "Frank_JT_LowerJaw_parentConstraint1.ctx" "Frank_JT_LowerJaw.tx";
connectAttr "Frank_JT_LowerJaw_parentConstraint1.cty" "Frank_JT_LowerJaw.ty";
connectAttr "Frank_JT_LowerJaw_parentConstraint1.ctz" "Frank_JT_LowerJaw.tz";
connectAttr "Frank_JT_LowerJaw_parentConstraint1.crx" "Frank_JT_LowerJaw.rx";
connectAttr "Frank_JT_LowerJaw_parentConstraint1.cry" "Frank_JT_LowerJaw.ry";
connectAttr "Frank_JT_LowerJaw_parentConstraint1.crz" "Frank_JT_LowerJaw.rz";
connectAttr "Frank_JT_LowerJaw.s" "Frank_JT_LowerJaw_End.is";
connectAttr "Frank_JT_LowerJaw.ro" "Frank_JT_LowerJaw_parentConstraint1.cro";
connectAttr "Frank_JT_LowerJaw.pim" "Frank_JT_LowerJaw_parentConstraint1.cpim";
connectAttr "Frank_JT_LowerJaw.rp" "Frank_JT_LowerJaw_parentConstraint1.crp";
connectAttr "Frank_JT_LowerJaw.rpt" "Frank_JT_LowerJaw_parentConstraint1.crt";
connectAttr "Frank_JT_LowerJaw.jo" "Frank_JT_LowerJaw_parentConstraint1.cjo";
connectAttr "Frank_CTRL_LowJaw.t" "Frank_JT_LowerJaw_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_LowJaw.rp" "Frank_JT_LowerJaw_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_LowJaw.rpt" "Frank_JT_LowerJaw_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_LowJaw.r" "Frank_JT_LowerJaw_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_LowJaw.ro" "Frank_JT_LowerJaw_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_LowJaw.s" "Frank_JT_LowerJaw_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_LowJaw.pm" "Frank_JT_LowerJaw_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_LowerJaw_parentConstraint1.w0" "Frank_JT_LowerJaw_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_Head.s" "Frank_JT_UpperJaw.is";
connectAttr "Frank_JT_UpperJaw_parentConstraint1.ctx" "Frank_JT_UpperJaw.tx";
connectAttr "Frank_JT_UpperJaw_parentConstraint1.cty" "Frank_JT_UpperJaw.ty";
connectAttr "Frank_JT_UpperJaw_parentConstraint1.ctz" "Frank_JT_UpperJaw.tz";
connectAttr "Frank_JT_UpperJaw_parentConstraint1.crx" "Frank_JT_UpperJaw.rx";
connectAttr "Frank_JT_UpperJaw_parentConstraint1.cry" "Frank_JT_UpperJaw.ry";
connectAttr "Frank_JT_UpperJaw_parentConstraint1.crz" "Frank_JT_UpperJaw.rz";
connectAttr "Frank_JT_UpperJaw.s" "Frank_JT_UpperJaw_End.is";
connectAttr "Frank_JT_UpperJaw.ro" "Frank_JT_UpperJaw_parentConstraint1.cro";
connectAttr "Frank_JT_UpperJaw.pim" "Frank_JT_UpperJaw_parentConstraint1.cpim";
connectAttr "Frank_JT_UpperJaw.rp" "Frank_JT_UpperJaw_parentConstraint1.crp";
connectAttr "Frank_JT_UpperJaw.rpt" "Frank_JT_UpperJaw_parentConstraint1.crt";
connectAttr "Frank_JT_UpperJaw.jo" "Frank_JT_UpperJaw_parentConstraint1.cjo";
connectAttr "Frank_CTRL_UpJaw.t" "Frank_JT_UpperJaw_parentConstraint1.tg[0].tt";
connectAttr "Frank_CTRL_UpJaw.rp" "Frank_JT_UpperJaw_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_UpJaw.rpt" "Frank_JT_UpperJaw_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_UpJaw.r" "Frank_JT_UpperJaw_parentConstraint1.tg[0].tr";
connectAttr "Frank_CTRL_UpJaw.ro" "Frank_JT_UpperJaw_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_UpJaw.s" "Frank_JT_UpperJaw_parentConstraint1.tg[0].ts";
connectAttr "Frank_CTRL_UpJaw.pm" "Frank_JT_UpperJaw_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_UpperJaw_parentConstraint1.w0" "Frank_JT_UpperJaw_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_Head.ro" "Frank_JT_Head_parentConstraint1.cro";
connectAttr "Frank_JT_Head.pim" "Frank_JT_Head_parentConstraint1.cpim";
connectAttr "Frank_JT_Head.rp" "Frank_JT_Head_parentConstraint1.crp";
connectAttr "Frank_JT_Head.rpt" "Frank_JT_Head_parentConstraint1.crt";
connectAttr "Frank_JT_Head.jo" "Frank_JT_Head_parentConstraint1.cjo";
connectAttr "Frank_CTRL_Head.t" "Frank_JT_Head_parentConstraint1.tg[0].tt";
connectAttr "Frank_CTRL_Head.rp" "Frank_JT_Head_parentConstraint1.tg[0].trp";
connectAttr "Frank_CTRL_Head.rpt" "Frank_JT_Head_parentConstraint1.tg[0].trt";
connectAttr "Frank_CTRL_Head.r" "Frank_JT_Head_parentConstraint1.tg[0].tr";
connectAttr "Frank_CTRL_Head.ro" "Frank_JT_Head_parentConstraint1.tg[0].tro";
connectAttr "Frank_CTRL_Head.s" "Frank_JT_Head_parentConstraint1.tg[0].ts";
connectAttr "Frank_CTRL_Head.pm" "Frank_JT_Head_parentConstraint1.tg[0].tpm";
connectAttr "Frank_JT_Head_parentConstraint1.w0" "Frank_JT_Head_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_Neck.ro" "Frank_JT_Neck_parentConstraint1.cro";
connectAttr "Frank_JT_Neck.pim" "Frank_JT_Neck_parentConstraint1.cpim";
connectAttr "Frank_JT_Neck.rp" "Frank_JT_Neck_parentConstraint1.crp";
connectAttr "Frank_JT_Neck.rpt" "Frank_JT_Neck_parentConstraint1.crt";
connectAttr "Frank_JT_Neck.jo" "Frank_JT_Neck_parentConstraint1.cjo";
connectAttr "Frank_CTRL_Neck.t" "Frank_JT_Neck_parentConstraint1.tg[0].tt";
connectAttr "Frank_CTRL_Neck.rp" "Frank_JT_Neck_parentConstraint1.tg[0].trp";
connectAttr "Frank_CTRL_Neck.rpt" "Frank_JT_Neck_parentConstraint1.tg[0].trt";
connectAttr "Frank_CTRL_Neck.r" "Frank_JT_Neck_parentConstraint1.tg[0].tr";
connectAttr "Frank_CTRL_Neck.ro" "Frank_JT_Neck_parentConstraint1.tg[0].tro";
connectAttr "Frank_CTRL_Neck.s" "Frank_JT_Neck_parentConstraint1.tg[0].ts";
connectAttr "Frank_CTRL_Neck.pm" "Frank_JT_Neck_parentConstraint1.tg[0].tpm";
connectAttr "Frank_JT_Neck_parentConstraint1.w0" "Frank_JT_Neck_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_chest.s" "Frank_JT_LArm_Shoulder.is";
connectAttr "Frank_JT_LArm_Shoulder_parentConstraint1.ctx" "Frank_JT_LArm_Shoulder.tx"
		;
connectAttr "Frank_JT_LArm_Shoulder_parentConstraint1.cty" "Frank_JT_LArm_Shoulder.ty"
		;
connectAttr "Frank_JT_LArm_Shoulder_parentConstraint1.ctz" "Frank_JT_LArm_Shoulder.tz"
		;
connectAttr "Frank_JT_LArm_Shoulder_parentConstraint1.crx" "Frank_JT_LArm_Shoulder.rx"
		;
connectAttr "Frank_JT_LArm_Shoulder_parentConstraint1.cry" "Frank_JT_LArm_Shoulder.ry"
		;
connectAttr "Frank_JT_LArm_Shoulder_parentConstraint1.crz" "Frank_JT_LArm_Shoulder.rz"
		;
connectAttr "Frank_JT_LArm_Shoulder.s" "Frank_JT_LArm_Elbow.is";
connectAttr "Frank_JT_LArm_Elbow_parentConstraint1.ctx" "Frank_JT_LArm_Elbow.tx"
		;
connectAttr "Frank_JT_LArm_Elbow_parentConstraint1.cty" "Frank_JT_LArm_Elbow.ty"
		;
connectAttr "Frank_JT_LArm_Elbow_parentConstraint1.ctz" "Frank_JT_LArm_Elbow.tz"
		;
connectAttr "Frank_JT_LArm_Elbow_parentConstraint1.crx" "Frank_JT_LArm_Elbow.rx"
		;
connectAttr "Frank_JT_LArm_Elbow_parentConstraint1.cry" "Frank_JT_LArm_Elbow.ry"
		;
connectAttr "Frank_JT_LArm_Elbow_parentConstraint1.crz" "Frank_JT_LArm_Elbow.rz"
		;
connectAttr "Frank_JT_LArm_Elbow.s" "Frank_JT_LArm_Wrist.is";
connectAttr "Frank_JT_LArm_Wrist_parentConstraint1.ctx" "Frank_JT_LArm_Wrist.tx"
		;
connectAttr "Frank_JT_LArm_Wrist_parentConstraint1.cty" "Frank_JT_LArm_Wrist.ty"
		;
connectAttr "Frank_JT_LArm_Wrist_parentConstraint1.ctz" "Frank_JT_LArm_Wrist.tz"
		;
connectAttr "Frank_JT_LArm_Wrist_parentConstraint1.crx" "Frank_JT_LArm_Wrist.rx"
		;
connectAttr "Frank_JT_LArm_Wrist_parentConstraint1.cry" "Frank_JT_LArm_Wrist.ry"
		;
connectAttr "Frank_JT_LArm_Wrist_parentConstraint1.crz" "Frank_JT_LArm_Wrist.rz"
		;
connectAttr "Frank_JT_LArm_Wrist.s" "Frank_JT_LArm_Finger_Base.is";
connectAttr "Frank_CTRL_LArm_FingerCurl.rx" "Frank_JT_LArm_Finger_Base.rz";
connectAttr "Frank_JT_LArm_Finger_Base.s" "Frank_JT_LArm_Finger_Mid.is";
connectAttr "Frank_CTRL_LArm_FingerCurl.rx" "Frank_JT_LArm_Finger_Mid.rz";
connectAttr "Frank_JT_LArm_Finger_Mid.s" "Frank_JT_LArm_Finger_End.is";
connectAttr "Frank_CTRL_LArm_FingerCurl.rx" "Frank_JT_LArm_Finger_End.rx";
connectAttr "Frank_JT_LArm_Wrist.ro" "Frank_JT_LArm_Wrist_parentConstraint1.cro"
		;
connectAttr "Frank_JT_LArm_Wrist.pim" "Frank_JT_LArm_Wrist_parentConstraint1.cpim"
		;
connectAttr "Frank_JT_LArm_Wrist.rp" "Frank_JT_LArm_Wrist_parentConstraint1.crp"
		;
connectAttr "Frank_JT_LArm_Wrist.rpt" "Frank_JT_LArm_Wrist_parentConstraint1.crt"
		;
connectAttr "Frank_JT_LArm_Wrist.jo" "Frank_JT_LArm_Wrist_parentConstraint1.cjo"
		;
connectAttr "Frank_CTRL_LArm_Wrist.t" "Frank_JT_LArm_Wrist_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_LArm_Wrist.rp" "Frank_JT_LArm_Wrist_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_LArm_Wrist.rpt" "Frank_JT_LArm_Wrist_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_LArm_Wrist.r" "Frank_JT_LArm_Wrist_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_LArm_Wrist.ro" "Frank_JT_LArm_Wrist_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_LArm_Wrist.s" "Frank_JT_LArm_Wrist_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_LArm_Wrist.pm" "Frank_JT_LArm_Wrist_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_LArm_Wrist_parentConstraint1.w0" "Frank_JT_LArm_Wrist_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_LArm_Elbow.ro" "Frank_JT_LArm_Elbow_parentConstraint1.cro"
		;
connectAttr "Frank_JT_LArm_Elbow.pim" "Frank_JT_LArm_Elbow_parentConstraint1.cpim"
		;
connectAttr "Frank_JT_LArm_Elbow.rp" "Frank_JT_LArm_Elbow_parentConstraint1.crp"
		;
connectAttr "Frank_JT_LArm_Elbow.rpt" "Frank_JT_LArm_Elbow_parentConstraint1.crt"
		;
connectAttr "Frank_JT_LArm_Elbow.jo" "Frank_JT_LArm_Elbow_parentConstraint1.cjo"
		;
connectAttr "Frank_CTRL_LArm_Elbow.t" "Frank_JT_LArm_Elbow_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_LArm_Elbow.rp" "Frank_JT_LArm_Elbow_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_LArm_Elbow.rpt" "Frank_JT_LArm_Elbow_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_LArm_Elbow.r" "Frank_JT_LArm_Elbow_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_LArm_Elbow.ro" "Frank_JT_LArm_Elbow_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_LArm_Elbow.s" "Frank_JT_LArm_Elbow_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_LArm_Elbow.pm" "Frank_JT_LArm_Elbow_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_LArm_Elbow_parentConstraint1.w0" "Frank_JT_LArm_Elbow_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_LArm_Shoulder.ro" "Frank_JT_LArm_Shoulder_parentConstraint1.cro"
		;
connectAttr "Frank_JT_LArm_Shoulder.pim" "Frank_JT_LArm_Shoulder_parentConstraint1.cpim"
		;
connectAttr "Frank_JT_LArm_Shoulder.rp" "Frank_JT_LArm_Shoulder_parentConstraint1.crp"
		;
connectAttr "Frank_JT_LArm_Shoulder.rpt" "Frank_JT_LArm_Shoulder_parentConstraint1.crt"
		;
connectAttr "Frank_JT_LArm_Shoulder.jo" "Frank_JT_LArm_Shoulder_parentConstraint1.cjo"
		;
connectAttr "Frank_CTRL_LArm_Shoulder.t" "Frank_JT_LArm_Shoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_LArm_Shoulder.rp" "Frank_JT_LArm_Shoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_LArm_Shoulder.rpt" "Frank_JT_LArm_Shoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_LArm_Shoulder.r" "Frank_JT_LArm_Shoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_LArm_Shoulder.ro" "Frank_JT_LArm_Shoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_LArm_Shoulder.s" "Frank_JT_LArm_Shoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_LArm_Shoulder.pm" "Frank_JT_LArm_Shoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_LArm_Shoulder_parentConstraint1.w0" "Frank_JT_LArm_Shoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_chest.s" "Frank_JT_RArm_Shoulder.is";
connectAttr "Frank_JT_RArm_Shoulder_parentConstraint1.ctx" "Frank_JT_RArm_Shoulder.tx"
		;
connectAttr "Frank_JT_RArm_Shoulder_parentConstraint1.cty" "Frank_JT_RArm_Shoulder.ty"
		;
connectAttr "Frank_JT_RArm_Shoulder_parentConstraint1.ctz" "Frank_JT_RArm_Shoulder.tz"
		;
connectAttr "Frank_JT_RArm_Shoulder_parentConstraint1.crx" "Frank_JT_RArm_Shoulder.rx"
		;
connectAttr "Frank_JT_RArm_Shoulder_parentConstraint1.cry" "Frank_JT_RArm_Shoulder.ry"
		;
connectAttr "Frank_JT_RArm_Shoulder_parentConstraint1.crz" "Frank_JT_RArm_Shoulder.rz"
		;
connectAttr "Frank_JT_RArm_Shoulder.s" "Frank_JT_RArm_Elbow.is";
connectAttr "Frank_JT_RArm_Elbow_parentConstraint1.ctx" "Frank_JT_RArm_Elbow.tx"
		;
connectAttr "Frank_JT_RArm_Elbow_parentConstraint1.cty" "Frank_JT_RArm_Elbow.ty"
		;
connectAttr "Frank_JT_RArm_Elbow_parentConstraint1.ctz" "Frank_JT_RArm_Elbow.tz"
		;
connectAttr "Frank_JT_RArm_Elbow_parentConstraint1.crx" "Frank_JT_RArm_Elbow.rx"
		;
connectAttr "Frank_JT_RArm_Elbow_parentConstraint1.cry" "Frank_JT_RArm_Elbow.ry"
		;
connectAttr "Frank_JT_RArm_Elbow_parentConstraint1.crz" "Frank_JT_RArm_Elbow.rz"
		;
connectAttr "Frank_JT_RArm_Elbow.s" "Frank_JT_RArm_Wrist.is";
connectAttr "Frank_JT_RArm_Wrist_parentConstraint1.ctx" "Frank_JT_RArm_Wrist.tx"
		;
connectAttr "Frank_JT_RArm_Wrist_parentConstraint1.cty" "Frank_JT_RArm_Wrist.ty"
		;
connectAttr "Frank_JT_RArm_Wrist_parentConstraint1.ctz" "Frank_JT_RArm_Wrist.tz"
		;
connectAttr "Frank_JT_RArm_Wrist_parentConstraint1.crx" "Frank_JT_RArm_Wrist.rx"
		;
connectAttr "Frank_JT_RArm_Wrist_parentConstraint1.cry" "Frank_JT_RArm_Wrist.ry"
		;
connectAttr "Frank_JT_RArm_Wrist_parentConstraint1.crz" "Frank_JT_RArm_Wrist.rz"
		;
connectAttr "Frank_JT_RArm_Wrist.s" "Frank_JT_RArm_Finger_Base.is";
connectAttr "Frank_CTRL_RArm_FingerCurl.rx" "Frank_JT_RArm_Finger_Base.rz";
connectAttr "Frank_JT_RArm_Finger_Base.s" "Frank_JT_RArm_Finger_Mid.is";
connectAttr "Frank_CTRL_RArm_FingerCurl.rx" "Frank_JT_RArm_Finger_Mid.rz";
connectAttr "Frank_JT_RArm_Finger_Mid.s" "Frank_JT_RArm_Finger_End.is";
connectAttr "Frank_CTRL_RArm_FingerCurl.rx" "Frank_JT_RArm_Finger_End.rx";
connectAttr "Frank_JT_RArm_Wrist.ro" "Frank_JT_RArm_Wrist_parentConstraint1.cro"
		;
connectAttr "Frank_JT_RArm_Wrist.pim" "Frank_JT_RArm_Wrist_parentConstraint1.cpim"
		;
connectAttr "Frank_JT_RArm_Wrist.rp" "Frank_JT_RArm_Wrist_parentConstraint1.crp"
		;
connectAttr "Frank_JT_RArm_Wrist.rpt" "Frank_JT_RArm_Wrist_parentConstraint1.crt"
		;
connectAttr "Frank_JT_RArm_Wrist.jo" "Frank_JT_RArm_Wrist_parentConstraint1.cjo"
		;
connectAttr "Frank_CTRL_RArm_Wrist.t" "Frank_JT_RArm_Wrist_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_RArm_Wrist.rp" "Frank_JT_RArm_Wrist_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_RArm_Wrist.rpt" "Frank_JT_RArm_Wrist_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_RArm_Wrist.r" "Frank_JT_RArm_Wrist_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_RArm_Wrist.ro" "Frank_JT_RArm_Wrist_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_RArm_Wrist.s" "Frank_JT_RArm_Wrist_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_RArm_Wrist.pm" "Frank_JT_RArm_Wrist_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_RArm_Wrist_parentConstraint1.w0" "Frank_JT_RArm_Wrist_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_RArm_Elbow.ro" "Frank_JT_RArm_Elbow_parentConstraint1.cro"
		;
connectAttr "Frank_JT_RArm_Elbow.pim" "Frank_JT_RArm_Elbow_parentConstraint1.cpim"
		;
connectAttr "Frank_JT_RArm_Elbow.rp" "Frank_JT_RArm_Elbow_parentConstraint1.crp"
		;
connectAttr "Frank_JT_RArm_Elbow.rpt" "Frank_JT_RArm_Elbow_parentConstraint1.crt"
		;
connectAttr "Frank_JT_RArm_Elbow.jo" "Frank_JT_RArm_Elbow_parentConstraint1.cjo"
		;
connectAttr "Frank_CTRL_RArm_Elbow.t" "Frank_JT_RArm_Elbow_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_RArm_Elbow.rp" "Frank_JT_RArm_Elbow_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_RArm_Elbow.rpt" "Frank_JT_RArm_Elbow_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_RArm_Elbow.r" "Frank_JT_RArm_Elbow_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_RArm_Elbow.ro" "Frank_JT_RArm_Elbow_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_RArm_Elbow.s" "Frank_JT_RArm_Elbow_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_RArm_Elbow.pm" "Frank_JT_RArm_Elbow_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_RArm_Elbow_parentConstraint1.w0" "Frank_JT_RArm_Elbow_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_RArm_Shoulder.ro" "Frank_JT_RArm_Shoulder_parentConstraint1.cro"
		;
connectAttr "Frank_JT_RArm_Shoulder.pim" "Frank_JT_RArm_Shoulder_parentConstraint1.cpim"
		;
connectAttr "Frank_JT_RArm_Shoulder.rp" "Frank_JT_RArm_Shoulder_parentConstraint1.crp"
		;
connectAttr "Frank_JT_RArm_Shoulder.rpt" "Frank_JT_RArm_Shoulder_parentConstraint1.crt"
		;
connectAttr "Frank_JT_RArm_Shoulder.jo" "Frank_JT_RArm_Shoulder_parentConstraint1.cjo"
		;
connectAttr "Frank_CTRL_RArm_Shoulder.t" "Frank_JT_RArm_Shoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_RArm_Shoulder.rp" "Frank_JT_RArm_Shoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_RArm_Shoulder.rpt" "Frank_JT_RArm_Shoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_RArm_Shoulder.r" "Frank_JT_RArm_Shoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_RArm_Shoulder.ro" "Frank_JT_RArm_Shoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_RArm_Shoulder.s" "Frank_JT_RArm_Shoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_RArm_Shoulder.pm" "Frank_JT_RArm_Shoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_RArm_Shoulder_parentConstraint1.w0" "Frank_JT_RArm_Shoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_chest.ro" "Frank_JT_Shoulder_parentConstraint1.cro";
connectAttr "Frank_JT_chest.pim" "Frank_JT_Shoulder_parentConstraint1.cpim";
connectAttr "Frank_JT_chest.rp" "Frank_JT_Shoulder_parentConstraint1.crp";
connectAttr "Frank_JT_chest.rpt" "Frank_JT_Shoulder_parentConstraint1.crt";
connectAttr "Frank_JT_chest.jo" "Frank_JT_Shoulder_parentConstraint1.cjo";
connectAttr "Frank_CTRL_Shoulder.t" "Frank_JT_Shoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_Shoulder.rp" "Frank_JT_Shoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_Shoulder.rpt" "Frank_JT_Shoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_Shoulder.r" "Frank_JT_Shoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_Shoulder.ro" "Frank_JT_Shoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_Shoulder.s" "Frank_JT_Shoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_Shoulder.pm" "Frank_JT_Shoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_Shoulder_parentConstraint1.w0" "Frank_JT_Shoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_Body.s" "|Frank_JT_Body|Frank_JT_TailBase.is";
connectAttr "Frank_JT_RArm_TailBase_parentConstraint1.ctx" "|Frank_JT_Body|Frank_JT_TailBase.tx"
		;
connectAttr "Frank_JT_RArm_TailBase_parentConstraint1.cty" "|Frank_JT_Body|Frank_JT_TailBase.ty"
		;
connectAttr "Frank_JT_RArm_TailBase_parentConstraint1.ctz" "|Frank_JT_Body|Frank_JT_TailBase.tz"
		;
connectAttr "Frank_JT_RArm_TailBase_parentConstraint1.crx" "|Frank_JT_Body|Frank_JT_TailBase.rx"
		;
connectAttr "Frank_JT_RArm_TailBase_parentConstraint1.cry" "|Frank_JT_Body|Frank_JT_TailBase.ry"
		;
connectAttr "Frank_JT_RArm_TailBase_parentConstraint1.crz" "|Frank_JT_Body|Frank_JT_TailBase.rz"
		;
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.s" "Frank_JT_TailMid.is";
connectAttr "Frank_JT_RArm_TailMid_parentConstraint1.ctx" "Frank_JT_TailMid.tx";
connectAttr "Frank_JT_RArm_TailMid_parentConstraint1.cty" "Frank_JT_TailMid.ty";
connectAttr "Frank_JT_RArm_TailMid_parentConstraint1.ctz" "Frank_JT_TailMid.tz";
connectAttr "Frank_JT_RArm_TailMid_parentConstraint1.crx" "Frank_JT_TailMid.rx";
connectAttr "Frank_JT_RArm_TailMid_parentConstraint1.cry" "Frank_JT_TailMid.ry";
connectAttr "Frank_JT_RArm_TailMid_parentConstraint1.crz" "Frank_JT_TailMid.rz";
connectAttr "Frank_JT_TailMid.s" "|Frank_JT_Body|Frank_JT_TailBase|Frank_JT_TailMid|Frank_JT_TailBase.is"
		;
connectAttr "Frank_JT_TailMid.ro" "Frank_JT_RArm_TailMid_parentConstraint1.cro";
connectAttr "Frank_JT_TailMid.pim" "Frank_JT_RArm_TailMid_parentConstraint1.cpim"
		;
connectAttr "Frank_JT_TailMid.rp" "Frank_JT_RArm_TailMid_parentConstraint1.crp";
connectAttr "Frank_JT_TailMid.rpt" "Frank_JT_RArm_TailMid_parentConstraint1.crt"
		;
connectAttr "Frank_JT_TailMid.jo" "Frank_JT_RArm_TailMid_parentConstraint1.cjo";
connectAttr "Frank_CTRL_Tail_End.t" "Frank_JT_RArm_TailMid_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_Tail_End.rp" "Frank_JT_RArm_TailMid_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_Tail_End.rpt" "Frank_JT_RArm_TailMid_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_Tail_End.r" "Frank_JT_RArm_TailMid_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_Tail_End.ro" "Frank_JT_RArm_TailMid_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_Tail_End.s" "Frank_JT_RArm_TailMid_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_Tail_End.pm" "Frank_JT_RArm_TailMid_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_RArm_TailMid_parentConstraint1.w0" "Frank_JT_RArm_TailMid_parentConstraint1.tg[0].tw"
		;
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.ro" "Frank_JT_RArm_TailBase_parentConstraint1.cro"
		;
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.pim" "Frank_JT_RArm_TailBase_parentConstraint1.cpim"
		;
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.rp" "Frank_JT_RArm_TailBase_parentConstraint1.crp"
		;
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.rpt" "Frank_JT_RArm_TailBase_parentConstraint1.crt"
		;
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.jo" "Frank_JT_RArm_TailBase_parentConstraint1.cjo"
		;
connectAttr "Frank_CTRL_Tail_Base.t" "Frank_JT_RArm_TailBase_parentConstraint1.tg[0].tt"
		;
connectAttr "Frank_CTRL_Tail_Base.rp" "Frank_JT_RArm_TailBase_parentConstraint1.tg[0].trp"
		;
connectAttr "Frank_CTRL_Tail_Base.rpt" "Frank_JT_RArm_TailBase_parentConstraint1.tg[0].trt"
		;
connectAttr "Frank_CTRL_Tail_Base.r" "Frank_JT_RArm_TailBase_parentConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_Tail_Base.ro" "Frank_JT_RArm_TailBase_parentConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_Tail_Base.s" "Frank_JT_RArm_TailBase_parentConstraint1.tg[0].ts"
		;
connectAttr "Frank_CTRL_Tail_Base.pm" "Frank_JT_RArm_TailBase_parentConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_RArm_TailBase_parentConstraint1.w0" "Frank_JT_RArm_TailBase_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_Body.s" "Frank_JT_LLeg_Thigh.is";
connectAttr "Frank_JT_LLeg_Thigh.s" "Frank_JT_LLeg_Knee.is";
connectAttr "Frank_JT_LLeg_Knee.s" "Frank_JT_LLeg_Foot.is";
connectAttr "Frank_JT_LLeg_Foot_orientConstraint1.crz" "Frank_JT_LLeg_Foot.rz";
connectAttr "Frank_JT_LLeg_Foot_orientConstraint1.crx" "Frank_JT_LLeg_Foot.rx";
connectAttr "Frank_JT_LLeg_Foot.s" "Frank_JT_LLeg_LToe_base.is";
connectAttr "Frank_CTRL_LLeg_ToeCurl.rx" "Frank_JT_LLeg_LToe_base.rz";
connectAttr "Frank_JT_LLeg_LToe_base.s" "Frank_JT_LLeg_LToe_end.is";
connectAttr "Frank_CTRL_LLeg_ToeCurl.rx" "Frank_JT_LLeg_LToe_end.rz";
connectAttr "Frank_JT_LLeg_Foot.s" "Frank_JT_LLeg_RToe_base.is";
connectAttr "Frank_CTRL_LLeg_ToeCurl.rx" "Frank_JT_LLeg_RToe_base.rz";
connectAttr "Frank_JT_LLeg_RToe_base.s" "Frank_JT_LLeg_RToe_end.is";
connectAttr "Frank_CTRL_LLeg_ToeCurl.rx" "Frank_JT_LLeg_RToe_end.rz";
connectAttr "Frank_JT_LLeg_Foot.ro" "Frank_JT_LLeg_Foot_orientConstraint1.cro";
connectAttr "Frank_JT_LLeg_Foot.pim" "Frank_JT_LLeg_Foot_orientConstraint1.cpim"
		;
connectAttr "Frank_JT_LLeg_Foot.jo" "Frank_JT_LLeg_Foot_orientConstraint1.cjo";
connectAttr "Frank_JT_LLeg_Foot.is" "Frank_JT_LLeg_Foot_orientConstraint1.is";
connectAttr "Frank_CTRL_LLeg.r" "Frank_JT_LLeg_Foot_orientConstraint1.tg[0].tr";
connectAttr "Frank_CTRL_LLeg.ro" "Frank_JT_LLeg_Foot_orientConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_LLeg.pm" "Frank_JT_LLeg_Foot_orientConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_LLeg_Foot_orientConstraint1.w0" "Frank_JT_LLeg_Foot_orientConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_LLeg_Foot.tx" "effector1.tx";
connectAttr "Frank_JT_LLeg_Foot.ty" "effector1.ty";
connectAttr "Frank_JT_LLeg_Foot.tz" "effector1.tz";
connectAttr "Frank_JT_Body.s" "Frank_JT_LLeg_Thigh1.is";
connectAttr "Frank_JT_LLeg_Thigh1.s" "Frank_JT_LLeg_Knee1.is";
connectAttr "Frank_JT_LLeg_Knee1.s" "Frank_JT_LLeg_Foot1.is";
connectAttr "Frank_JT_LLeg_Foot1_orientConstraint1.crz" "Frank_JT_LLeg_Foot1.rz"
		;
connectAttr "Frank_JT_LLeg_Foot1_orientConstraint1.crx" "Frank_JT_LLeg_Foot1.rx"
		;
connectAttr "Frank_JT_LLeg_Foot1.s" "Frank_JT_LLeg_LToe_base1.is";
connectAttr "Frank_CTRL_RLeg_ToeCurl.rx" "Frank_JT_LLeg_LToe_base1.rz";
connectAttr "Frank_JT_LLeg_LToe_base1.s" "Frank_JT_LLeg_LToe_end1.is";
connectAttr "Frank_CTRL_RLeg_ToeCurl.rx" "Frank_JT_LLeg_LToe_end1.rz";
connectAttr "Frank_JT_LLeg_Foot1.s" "Frank_JT_LLeg_RToe_base1.is";
connectAttr "Frank_CTRL_RLeg_ToeCurl.rx" "Frank_JT_LLeg_RToe_base1.rz";
connectAttr "Frank_JT_LLeg_RToe_base1.s" "Frank_JT_LLeg_RToe_end1.is";
connectAttr "Frank_CTRL_RLeg_ToeCurl.rx" "Frank_JT_LLeg_RToe_end1.rz";
connectAttr "Frank_JT_LLeg_Foot1.ro" "Frank_JT_LLeg_Foot1_orientConstraint1.cro"
		;
connectAttr "Frank_JT_LLeg_Foot1.pim" "Frank_JT_LLeg_Foot1_orientConstraint1.cpim"
		;
connectAttr "Frank_JT_LLeg_Foot1.jo" "Frank_JT_LLeg_Foot1_orientConstraint1.cjo"
		;
connectAttr "Frank_JT_LLeg_Foot1.is" "Frank_JT_LLeg_Foot1_orientConstraint1.is";
connectAttr "Frank_CTRL_LLeg1.r" "Frank_JT_LLeg_Foot1_orientConstraint1.tg[0].tr"
		;
connectAttr "Frank_CTRL_LLeg1.ro" "Frank_JT_LLeg_Foot1_orientConstraint1.tg[0].tro"
		;
connectAttr "Frank_CTRL_LLeg1.pm" "Frank_JT_LLeg_Foot1_orientConstraint1.tg[0].tpm"
		;
connectAttr "Frank_JT_LLeg_Foot1_orientConstraint1.w0" "Frank_JT_LLeg_Foot1_orientConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_LLeg_Foot1.tx" "effector2.tx";
connectAttr "Frank_JT_LLeg_Foot1.ty" "effector2.ty";
connectAttr "Frank_JT_LLeg_Foot1.tz" "effector2.tz";
connectAttr "Frank_JT_Body.ro" "Frank_JT_Body_parentConstraint1.cro";
connectAttr "Frank_JT_Body.pim" "Frank_JT_Body_parentConstraint1.cpim";
connectAttr "Frank_JT_Body.rp" "Frank_JT_Body_parentConstraint1.crp";
connectAttr "Frank_JT_Body.rpt" "Frank_JT_Body_parentConstraint1.crt";
connectAttr "Frank_JT_Body.jo" "Frank_JT_Body_parentConstraint1.cjo";
connectAttr "Frank_CTRL_Body.t" "Frank_JT_Body_parentConstraint1.tg[0].tt";
connectAttr "Frank_CTRL_Body.rp" "Frank_JT_Body_parentConstraint1.tg[0].trp";
connectAttr "Frank_CTRL_Body.rpt" "Frank_JT_Body_parentConstraint1.tg[0].trt";
connectAttr "Frank_CTRL_Body.r" "Frank_JT_Body_parentConstraint1.tg[0].tr";
connectAttr "Frank_CTRL_Body.ro" "Frank_JT_Body_parentConstraint1.tg[0].tro";
connectAttr "Frank_CTRL_Body.s" "Frank_JT_Body_parentConstraint1.tg[0].ts";
connectAttr "Frank_CTRL_Body.pm" "Frank_JT_Body_parentConstraint1.tg[0].tpm";
connectAttr "Frank_JT_Body_parentConstraint1.w0" "Frank_JT_Body_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_LLeg_Thigh.msg" "Frank_LLeg_IK.hsj";
connectAttr "effector1.hp" "Frank_LLeg_IK.hee";
connectAttr "ikSCsolver.msg" "Frank_LLeg_IK.hsv";
connectAttr "Frank_LLeg_IK_parentConstraint1.ctx" "Frank_LLeg_IK.tx";
connectAttr "Frank_LLeg_IK_parentConstraint1.cty" "Frank_LLeg_IK.ty";
connectAttr "Frank_LLeg_IK_parentConstraint1.ctz" "Frank_LLeg_IK.tz";
connectAttr "Frank_LLeg_IK_parentConstraint1.crx" "Frank_LLeg_IK.rx";
connectAttr "Frank_LLeg_IK_parentConstraint1.cry" "Frank_LLeg_IK.ry";
connectAttr "Frank_LLeg_IK_parentConstraint1.crz" "Frank_LLeg_IK.rz";
connectAttr "Frank_LLeg_IK.ro" "Frank_LLeg_IK_parentConstraint1.cro";
connectAttr "Frank_LLeg_IK.pim" "Frank_LLeg_IK_parentConstraint1.cpim";
connectAttr "Frank_LLeg_IK.rp" "Frank_LLeg_IK_parentConstraint1.crp";
connectAttr "Frank_LLeg_IK.rpt" "Frank_LLeg_IK_parentConstraint1.crt";
connectAttr "Frank_CTRL_LLeg.t" "Frank_LLeg_IK_parentConstraint1.tg[0].tt";
connectAttr "Frank_CTRL_LLeg.rp" "Frank_LLeg_IK_parentConstraint1.tg[0].trp";
connectAttr "Frank_CTRL_LLeg.rpt" "Frank_LLeg_IK_parentConstraint1.tg[0].trt";
connectAttr "Frank_CTRL_LLeg.r" "Frank_LLeg_IK_parentConstraint1.tg[0].tr";
connectAttr "Frank_CTRL_LLeg.ro" "Frank_LLeg_IK_parentConstraint1.tg[0].tro";
connectAttr "Frank_CTRL_LLeg.s" "Frank_LLeg_IK_parentConstraint1.tg[0].ts";
connectAttr "Frank_CTRL_LLeg.pm" "Frank_LLeg_IK_parentConstraint1.tg[0].tpm";
connectAttr "Frank_LLeg_IK_parentConstraint1.w0" "Frank_LLeg_IK_parentConstraint1.tg[0].tw"
		;
connectAttr "Frank_JT_LLeg_Thigh1.msg" "Frank_RLeg_IK.hsj";
connectAttr "effector2.hp" "Frank_RLeg_IK.hee";
connectAttr "ikSCsolver.msg" "Frank_RLeg_IK.hsv";
connectAttr "ikHandle1_parentConstraint1.ctx" "Frank_RLeg_IK.tx";
connectAttr "ikHandle1_parentConstraint1.cty" "Frank_RLeg_IK.ty";
connectAttr "ikHandle1_parentConstraint1.ctz" "Frank_RLeg_IK.tz";
connectAttr "ikHandle1_parentConstraint1.crx" "Frank_RLeg_IK.rx";
connectAttr "ikHandle1_parentConstraint1.cry" "Frank_RLeg_IK.ry";
connectAttr "ikHandle1_parentConstraint1.crz" "Frank_RLeg_IK.rz";
connectAttr "Frank_RLeg_IK.ro" "ikHandle1_parentConstraint1.cro";
connectAttr "Frank_RLeg_IK.pim" "ikHandle1_parentConstraint1.cpim";
connectAttr "Frank_RLeg_IK.rp" "ikHandle1_parentConstraint1.crp";
connectAttr "Frank_RLeg_IK.rpt" "ikHandle1_parentConstraint1.crt";
connectAttr "Frank_CTRL_LLeg1.t" "ikHandle1_parentConstraint1.tg[0].tt";
connectAttr "Frank_CTRL_LLeg1.rp" "ikHandle1_parentConstraint1.tg[0].trp";
connectAttr "Frank_CTRL_LLeg1.rpt" "ikHandle1_parentConstraint1.tg[0].trt";
connectAttr "Frank_CTRL_LLeg1.r" "ikHandle1_parentConstraint1.tg[0].tr";
connectAttr "Frank_CTRL_LLeg1.ro" "ikHandle1_parentConstraint1.tg[0].tro";
connectAttr "Frank_CTRL_LLeg1.s" "ikHandle1_parentConstraint1.tg[0].ts";
connectAttr "Frank_CTRL_LLeg1.pm" "ikHandle1_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle1_parentConstraint1.w0" "ikHandle1_parentConstraint1.tg[0].tw"
		;
connectAttr "skinCluster1GroupId.id" "Frank_MeshShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "Frank_MeshShapeDeformed.iog.og[0].gco";
connectAttr "groupId2.id" "Frank_MeshShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "Frank_MeshShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "Frank_MeshShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "Frank_MeshShapeDeformed.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Fighter_Frank_UVModel_Draft1_DoneRNfosterParent1.msg" "Fighter_Frank_UVModel_Draft1_DoneRN.fp"
		;
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "Frank_JT_RArm_Finger_Base.msg" "hyperLayout1.hyp[0].dn";
connectAttr "Frank_CTRL_RArm_FingerCurlShape.msg" "hyperLayout1.hyp[1].dn";
connectAttr "Frank_JT_RArm_Finger_End.msg" "hyperLayout1.hyp[2].dn";
connectAttr "Frank_CTRL_RArm_FingerCurl.msg" "hyperLayout1.hyp[3].dn";
connectAttr "Frank_JT_RArm_Finger_Mid.msg" "hyperLayout1.hyp[4].dn";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Frank_JT_Body.wm" "skinCluster1.ma[0]";
connectAttr "Frank_JT_chest.wm" "skinCluster1.ma[1]";
connectAttr "Frank_JT_Neck.wm" "skinCluster1.ma[2]";
connectAttr "Frank_JT_Head.wm" "skinCluster1.ma[3]";
connectAttr "Frank_JT_LowerJaw.wm" "skinCluster1.ma[4]";
connectAttr "Frank_JT_LowerJaw_End.wm" "skinCluster1.ma[5]";
connectAttr "Frank_JT_UpperJaw.wm" "skinCluster1.ma[6]";
connectAttr "Frank_JT_UpperJaw_End.wm" "skinCluster1.ma[7]";
connectAttr "Frank_JT_LArm_Shoulder.wm" "skinCluster1.ma[8]";
connectAttr "Frank_JT_LArm_Elbow.wm" "skinCluster1.ma[9]";
connectAttr "Frank_JT_LArm_Wrist.wm" "skinCluster1.ma[10]";
connectAttr "Frank_JT_LArm_Finger_Base.wm" "skinCluster1.ma[11]";
connectAttr "Frank_JT_LArm_Finger_Mid.wm" "skinCluster1.ma[12]";
connectAttr "Frank_JT_LArm_Finger_End.wm" "skinCluster1.ma[13]";
connectAttr "Frank_JT_RArm_Shoulder.wm" "skinCluster1.ma[14]";
connectAttr "Frank_JT_RArm_Elbow.wm" "skinCluster1.ma[15]";
connectAttr "Frank_JT_RArm_Wrist.wm" "skinCluster1.ma[16]";
connectAttr "Frank_JT_RArm_Finger_Base.wm" "skinCluster1.ma[17]";
connectAttr "Frank_JT_RArm_Finger_Mid.wm" "skinCluster1.ma[18]";
connectAttr "Frank_JT_RArm_Finger_End.wm" "skinCluster1.ma[19]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.wm" "skinCluster1.ma[20]";
connectAttr "Frank_JT_TailMid.wm" "skinCluster1.ma[21]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase|Frank_JT_TailMid|Frank_JT_TailBase.wm" "skinCluster1.ma[22]"
		;
connectAttr "Frank_JT_LLeg_Thigh.wm" "skinCluster1.ma[23]";
connectAttr "Frank_JT_LLeg_Knee.wm" "skinCluster1.ma[24]";
connectAttr "Frank_JT_LLeg_Foot.wm" "skinCluster1.ma[25]";
connectAttr "Frank_JT_LLeg_LToe_base.wm" "skinCluster1.ma[26]";
connectAttr "Frank_JT_LLeg_LToe_end.wm" "skinCluster1.ma[27]";
connectAttr "Frank_JT_LLeg_RToe_base.wm" "skinCluster1.ma[28]";
connectAttr "Frank_JT_LLeg_RToe_end.wm" "skinCluster1.ma[29]";
connectAttr "Frank_JT_LLeg_Thigh1.wm" "skinCluster1.ma[30]";
connectAttr "Frank_JT_LLeg_Knee1.wm" "skinCluster1.ma[31]";
connectAttr "Frank_JT_LLeg_Foot1.wm" "skinCluster1.ma[32]";
connectAttr "Frank_JT_LLeg_LToe_base1.wm" "skinCluster1.ma[33]";
connectAttr "Frank_JT_LLeg_LToe_end1.wm" "skinCluster1.ma[34]";
connectAttr "Frank_JT_LLeg_RToe_base1.wm" "skinCluster1.ma[35]";
connectAttr "Frank_JT_LLeg_RToe_end1.wm" "skinCluster1.ma[36]";
connectAttr "Frank_JT_Body.liw" "skinCluster1.lw[0]";
connectAttr "Frank_JT_chest.liw" "skinCluster1.lw[1]";
connectAttr "Frank_JT_Neck.liw" "skinCluster1.lw[2]";
connectAttr "Frank_JT_Head.liw" "skinCluster1.lw[3]";
connectAttr "Frank_JT_LowerJaw.liw" "skinCluster1.lw[4]";
connectAttr "Frank_JT_LowerJaw_End.liw" "skinCluster1.lw[5]";
connectAttr "Frank_JT_UpperJaw.liw" "skinCluster1.lw[6]";
connectAttr "Frank_JT_UpperJaw_End.liw" "skinCluster1.lw[7]";
connectAttr "Frank_JT_LArm_Shoulder.liw" "skinCluster1.lw[8]";
connectAttr "Frank_JT_LArm_Elbow.liw" "skinCluster1.lw[9]";
connectAttr "Frank_JT_LArm_Wrist.liw" "skinCluster1.lw[10]";
connectAttr "Frank_JT_LArm_Finger_Base.liw" "skinCluster1.lw[11]";
connectAttr "Frank_JT_LArm_Finger_Mid.liw" "skinCluster1.lw[12]";
connectAttr "Frank_JT_LArm_Finger_End.liw" "skinCluster1.lw[13]";
connectAttr "Frank_JT_RArm_Shoulder.liw" "skinCluster1.lw[14]";
connectAttr "Frank_JT_RArm_Elbow.liw" "skinCluster1.lw[15]";
connectAttr "Frank_JT_RArm_Wrist.liw" "skinCluster1.lw[16]";
connectAttr "Frank_JT_RArm_Finger_Base.liw" "skinCluster1.lw[17]";
connectAttr "Frank_JT_RArm_Finger_Mid.liw" "skinCluster1.lw[18]";
connectAttr "Frank_JT_RArm_Finger_End.liw" "skinCluster1.lw[19]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.liw" "skinCluster1.lw[20]";
connectAttr "Frank_JT_TailMid.liw" "skinCluster1.lw[21]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase|Frank_JT_TailMid|Frank_JT_TailBase.liw" "skinCluster1.lw[22]"
		;
connectAttr "Frank_JT_LLeg_Thigh.liw" "skinCluster1.lw[23]";
connectAttr "Frank_JT_LLeg_Knee.liw" "skinCluster1.lw[24]";
connectAttr "Frank_JT_LLeg_Foot.liw" "skinCluster1.lw[25]";
connectAttr "Frank_JT_LLeg_LToe_base.liw" "skinCluster1.lw[26]";
connectAttr "Frank_JT_LLeg_LToe_end.liw" "skinCluster1.lw[27]";
connectAttr "Frank_JT_LLeg_RToe_base.liw" "skinCluster1.lw[28]";
connectAttr "Frank_JT_LLeg_RToe_end.liw" "skinCluster1.lw[29]";
connectAttr "Frank_JT_LLeg_Thigh1.liw" "skinCluster1.lw[30]";
connectAttr "Frank_JT_LLeg_Knee1.liw" "skinCluster1.lw[31]";
connectAttr "Frank_JT_LLeg_Foot1.liw" "skinCluster1.lw[32]";
connectAttr "Frank_JT_LLeg_LToe_base1.liw" "skinCluster1.lw[33]";
connectAttr "Frank_JT_LLeg_LToe_end1.liw" "skinCluster1.lw[34]";
connectAttr "Frank_JT_LLeg_RToe_base1.liw" "skinCluster1.lw[35]";
connectAttr "Frank_JT_LLeg_RToe_end1.liw" "skinCluster1.lw[36]";
connectAttr "Frank_JT_Body.obcc" "skinCluster1.ifcl[0]";
connectAttr "Frank_JT_chest.obcc" "skinCluster1.ifcl[1]";
connectAttr "Frank_JT_Neck.obcc" "skinCluster1.ifcl[2]";
connectAttr "Frank_JT_Head.obcc" "skinCluster1.ifcl[3]";
connectAttr "Frank_JT_LowerJaw.obcc" "skinCluster1.ifcl[4]";
connectAttr "Frank_JT_LowerJaw_End.obcc" "skinCluster1.ifcl[5]";
connectAttr "Frank_JT_UpperJaw.obcc" "skinCluster1.ifcl[6]";
connectAttr "Frank_JT_UpperJaw_End.obcc" "skinCluster1.ifcl[7]";
connectAttr "Frank_JT_LArm_Shoulder.obcc" "skinCluster1.ifcl[8]";
connectAttr "Frank_JT_LArm_Elbow.obcc" "skinCluster1.ifcl[9]";
connectAttr "Frank_JT_LArm_Wrist.obcc" "skinCluster1.ifcl[10]";
connectAttr "Frank_JT_LArm_Finger_Base.obcc" "skinCluster1.ifcl[11]";
connectAttr "Frank_JT_LArm_Finger_Mid.obcc" "skinCluster1.ifcl[12]";
connectAttr "Frank_JT_LArm_Finger_End.obcc" "skinCluster1.ifcl[13]";
connectAttr "Frank_JT_RArm_Shoulder.obcc" "skinCluster1.ifcl[14]";
connectAttr "Frank_JT_RArm_Elbow.obcc" "skinCluster1.ifcl[15]";
connectAttr "Frank_JT_RArm_Wrist.obcc" "skinCluster1.ifcl[16]";
connectAttr "Frank_JT_RArm_Finger_Base.obcc" "skinCluster1.ifcl[17]";
connectAttr "Frank_JT_RArm_Finger_Mid.obcc" "skinCluster1.ifcl[18]";
connectAttr "Frank_JT_RArm_Finger_End.obcc" "skinCluster1.ifcl[19]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.obcc" "skinCluster1.ifcl[20]";
connectAttr "Frank_JT_TailMid.obcc" "skinCluster1.ifcl[21]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase|Frank_JT_TailMid|Frank_JT_TailBase.obcc" "skinCluster1.ifcl[22]"
		;
connectAttr "Frank_JT_LLeg_Thigh.obcc" "skinCluster1.ifcl[23]";
connectAttr "Frank_JT_LLeg_Knee.obcc" "skinCluster1.ifcl[24]";
connectAttr "Frank_JT_LLeg_Foot.obcc" "skinCluster1.ifcl[25]";
connectAttr "Frank_JT_LLeg_LToe_base.obcc" "skinCluster1.ifcl[26]";
connectAttr "Frank_JT_LLeg_LToe_end.obcc" "skinCluster1.ifcl[27]";
connectAttr "Frank_JT_LLeg_RToe_base.obcc" "skinCluster1.ifcl[28]";
connectAttr "Frank_JT_LLeg_RToe_end.obcc" "skinCluster1.ifcl[29]";
connectAttr "Frank_JT_LLeg_Thigh1.obcc" "skinCluster1.ifcl[30]";
connectAttr "Frank_JT_LLeg_Knee1.obcc" "skinCluster1.ifcl[31]";
connectAttr "Frank_JT_LLeg_Foot1.obcc" "skinCluster1.ifcl[32]";
connectAttr "Frank_JT_LLeg_LToe_base1.obcc" "skinCluster1.ifcl[33]";
connectAttr "Frank_JT_LLeg_LToe_end1.obcc" "skinCluster1.ifcl[34]";
connectAttr "Frank_JT_LLeg_RToe_base1.obcc" "skinCluster1.ifcl[35]";
connectAttr "Frank_JT_LLeg_RToe_end1.obcc" "skinCluster1.ifcl[36]";
connectAttr "Frank_JT_UpperJaw.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "Frank_MeshShapeDeformed.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "Frank_MeshShapeDeformed.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Frank_JT_Body.msg" "bindPose1.m[0]";
connectAttr "Frank_JT_chest.msg" "bindPose1.m[1]";
connectAttr "Frank_JT_Neck.msg" "bindPose1.m[2]";
connectAttr "Frank_JT_Head.msg" "bindPose1.m[3]";
connectAttr "Frank_JT_LowerJaw.msg" "bindPose1.m[4]";
connectAttr "Frank_JT_LowerJaw_End.msg" "bindPose1.m[5]";
connectAttr "Frank_JT_UpperJaw.msg" "bindPose1.m[6]";
connectAttr "Frank_JT_UpperJaw_End.msg" "bindPose1.m[7]";
connectAttr "Frank_JT_LArm_Shoulder.msg" "bindPose1.m[8]";
connectAttr "Frank_JT_LArm_Elbow.msg" "bindPose1.m[9]";
connectAttr "Frank_JT_LArm_Wrist.msg" "bindPose1.m[10]";
connectAttr "Frank_JT_LArm_Finger_Base.msg" "bindPose1.m[11]";
connectAttr "Frank_JT_LArm_Finger_Mid.msg" "bindPose1.m[12]";
connectAttr "Frank_JT_LArm_Finger_End.msg" "bindPose1.m[13]";
connectAttr "Frank_JT_RArm_Shoulder.msg" "bindPose1.m[14]";
connectAttr "Frank_JT_RArm_Elbow.msg" "bindPose1.m[15]";
connectAttr "Frank_JT_RArm_Wrist.msg" "bindPose1.m[16]";
connectAttr "Frank_JT_RArm_Finger_Base.msg" "bindPose1.m[17]";
connectAttr "Frank_JT_RArm_Finger_Mid.msg" "bindPose1.m[18]";
connectAttr "Frank_JT_RArm_Finger_End.msg" "bindPose1.m[19]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.msg" "bindPose1.m[20]";
connectAttr "Frank_JT_TailMid.msg" "bindPose1.m[21]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase|Frank_JT_TailMid|Frank_JT_TailBase.msg" "bindPose1.m[22]"
		;
connectAttr "Frank_JT_LLeg_Thigh.msg" "bindPose1.m[23]";
connectAttr "Frank_JT_LLeg_Knee.msg" "bindPose1.m[24]";
connectAttr "Frank_JT_LLeg_Foot.msg" "bindPose1.m[25]";
connectAttr "Frank_JT_LLeg_LToe_base.msg" "bindPose1.m[26]";
connectAttr "Frank_JT_LLeg_LToe_end.msg" "bindPose1.m[27]";
connectAttr "Frank_JT_LLeg_RToe_base.msg" "bindPose1.m[28]";
connectAttr "Frank_JT_LLeg_RToe_end.msg" "bindPose1.m[29]";
connectAttr "Frank_JT_LLeg_Thigh1.msg" "bindPose1.m[30]";
connectAttr "Frank_JT_LLeg_Knee1.msg" "bindPose1.m[31]";
connectAttr "Frank_JT_LLeg_Foot1.msg" "bindPose1.m[32]";
connectAttr "Frank_JT_LLeg_LToe_base1.msg" "bindPose1.m[33]";
connectAttr "Frank_JT_LLeg_LToe_end1.msg" "bindPose1.m[34]";
connectAttr "Frank_JT_LLeg_RToe_base1.msg" "bindPose1.m[35]";
connectAttr "Frank_JT_LLeg_RToe_end1.msg" "bindPose1.m[36]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[3]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[1]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[1]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[0]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[0]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[25]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[0]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[32]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "Frank_JT_Body.bps" "bindPose1.wm[0]";
connectAttr "Frank_JT_chest.bps" "bindPose1.wm[1]";
connectAttr "Frank_JT_Neck.bps" "bindPose1.wm[2]";
connectAttr "Frank_JT_Head.bps" "bindPose1.wm[3]";
connectAttr "Frank_JT_LowerJaw.bps" "bindPose1.wm[4]";
connectAttr "Frank_JT_LowerJaw_End.bps" "bindPose1.wm[5]";
connectAttr "Frank_JT_UpperJaw.bps" "bindPose1.wm[6]";
connectAttr "Frank_JT_UpperJaw_End.bps" "bindPose1.wm[7]";
connectAttr "Frank_JT_LArm_Shoulder.bps" "bindPose1.wm[8]";
connectAttr "Frank_JT_LArm_Elbow.bps" "bindPose1.wm[9]";
connectAttr "Frank_JT_LArm_Wrist.bps" "bindPose1.wm[10]";
connectAttr "Frank_JT_LArm_Finger_Base.bps" "bindPose1.wm[11]";
connectAttr "Frank_JT_LArm_Finger_Mid.bps" "bindPose1.wm[12]";
connectAttr "Frank_JT_LArm_Finger_End.bps" "bindPose1.wm[13]";
connectAttr "Frank_JT_RArm_Shoulder.bps" "bindPose1.wm[14]";
connectAttr "Frank_JT_RArm_Elbow.bps" "bindPose1.wm[15]";
connectAttr "Frank_JT_RArm_Wrist.bps" "bindPose1.wm[16]";
connectAttr "Frank_JT_RArm_Finger_Base.bps" "bindPose1.wm[17]";
connectAttr "Frank_JT_RArm_Finger_Mid.bps" "bindPose1.wm[18]";
connectAttr "Frank_JT_RArm_Finger_End.bps" "bindPose1.wm[19]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase.bps" "bindPose1.wm[20]";
connectAttr "Frank_JT_TailMid.bps" "bindPose1.wm[21]";
connectAttr "|Frank_JT_Body|Frank_JT_TailBase|Frank_JT_TailMid|Frank_JT_TailBase.bps" "bindPose1.wm[22]"
		;
connectAttr "Frank_JT_LLeg_Thigh.bps" "bindPose1.wm[23]";
connectAttr "Frank_JT_LLeg_Knee.bps" "bindPose1.wm[24]";
connectAttr "Frank_JT_LLeg_Foot.bps" "bindPose1.wm[25]";
connectAttr "Frank_JT_LLeg_LToe_base.bps" "bindPose1.wm[26]";
connectAttr "Frank_JT_LLeg_LToe_end.bps" "bindPose1.wm[27]";
connectAttr "Frank_JT_LLeg_RToe_base.bps" "bindPose1.wm[28]";
connectAttr "Frank_JT_LLeg_RToe_end.bps" "bindPose1.wm[29]";
connectAttr "Frank_JT_LLeg_Thigh1.bps" "bindPose1.wm[30]";
connectAttr "Frank_JT_LLeg_Knee1.bps" "bindPose1.wm[31]";
connectAttr "Frank_JT_LLeg_Foot1.bps" "bindPose1.wm[32]";
connectAttr "Frank_JT_LLeg_LToe_base1.bps" "bindPose1.wm[33]";
connectAttr "Frank_JT_LLeg_LToe_end1.bps" "bindPose1.wm[34]";
connectAttr "Frank_JT_LLeg_RToe_base1.bps" "bindPose1.wm[35]";
connectAttr "Frank_JT_LLeg_RToe_end1.bps" "bindPose1.wm[36]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"Fighter_Frank_UVModel_Draft1_DoneRN\" \"\" \"/Users/publicuser/Desktop/Aislynns Stuff/Theory Fighter//Models/Frank/Draft 1/UV/Fighter_Frank_UVModel_Draft1_Done.ma\" 4117362588 \"/Users/publicuser/Desktop/Aislynns Stuff/Theory Fighter/Models/Frank/Draft 1/UV/Fighter_Frank_UVModel_Draft1_Done.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Fighter_Frank_Rig_Draft1_13(actuallydone).ma
