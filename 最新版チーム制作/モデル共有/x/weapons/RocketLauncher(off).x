xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 270;
 1.67662;9.39908;2.98647;,
 1.67662;10.93343;1.34253;,
 1.67662;10.70053;8.63066;,
 1.67662;6.97427;10.38420;,
 1.67662;5.45363;4.63041;,
 1.67662;1.16568;10.60339;,
 1.67662;2.16574;4.41122;,
 1.67662;-0.25907;9.39784;,
 1.67662;-0.68375;6.82233;,
 1.67662;-0.46456;5.28799;,
 -1.84320;10.70053;8.63066;,
 -1.84320;10.93343;1.34253;,
 -1.84320;9.39908;2.98647;,
 -1.84320;5.45363;4.63041;,
 -1.84320;6.97427;10.38420;,
 -1.84320;2.16574;4.41122;,
 -1.84320;1.16568;10.60339;,
 -1.84320;-0.25907;9.39784;,
 -1.84320;-0.46456;5.28799;,
 -1.84320;-0.68375;6.82233;,
 -1.37344;16.62394;19.07144;,
 1.20685;16.62394;19.07144;,
 1.20685;16.62394;-17.26754;,
 -1.37344;16.62394;-17.26754;,
 3.03139;14.79939;19.07144;,
 3.03139;14.79939;-17.26757;,
 3.03139;12.21911;19.07144;,
 3.03139;12.21911;-17.26757;,
 1.20685;10.39456;19.07144;,
 1.20685;10.39456;-17.26757;,
 -1.37344;10.39456;19.07144;,
 -1.37344;10.39456;-17.26757;,
 -3.19798;12.21911;19.07144;,
 -3.19798;12.21911;-17.26757;,
 -3.19798;14.79939;19.07144;,
 -3.19798;14.79939;-17.26757;,
 -1.37344;16.62394;19.07144;,
 -1.37344;16.62394;-17.26754;,
 -0.08329;13.50926;19.07144;,
 -0.08329;13.50926;19.07144;,
 -0.08329;13.50926;19.07144;,
 -0.08329;13.50926;19.07144;,
 -0.08329;13.50926;19.07144;,
 -0.08329;13.50926;19.07144;,
 -0.08329;13.50926;19.07144;,
 -0.08329;13.50926;19.07144;,
 -0.08329;13.50926;-17.26757;,
 -0.08329;13.50926;-17.26757;,
 -0.08329;13.50926;-17.26757;,
 -0.08329;13.50926;-17.26757;,
 -0.08329;13.50926;-17.26757;,
 -0.08329;13.50926;-17.26757;,
 -0.08329;13.50926;-17.26757;,
 -0.08329;13.50926;-17.26757;,
 1.06277;11.70014;-3.52466;,
 1.06277;13.23449;-3.46389;,
 1.06277;13.00159;-0.94801;,
 1.06277;9.27532;-0.48615;,
 1.06277;7.75468;-3.34235;,
 1.06277;3.46674;-0.29169;,
 1.06277;4.46680;-3.53681;,
 1.06277;2.04199;-1.36125;,
 1.06277;2.23753;-2.78236;,
 1.06277;3.40818;-3.13664;,
 -1.22936;13.00159;-0.94801;,
 -1.22936;13.23449;-3.46389;,
 -1.22936;11.70014;-3.52466;,
 -1.22936;7.75468;-3.34235;,
 -1.22936;9.27532;-0.48615;,
 -1.22936;4.46680;-3.53681;,
 -1.22936;3.46674;-0.29169;,
 -1.22936;2.04199;-1.36125;,
 -1.22936;3.40818;-3.13664;,
 -1.22936;2.23753;-2.78236;,
 -0.08329;13.50925;-17.19916;,
 2.91534;16.50788;-17.19916;,
 -0.08329;17.74996;-17.19916;,
 -0.08329;13.50925;-17.19916;,
 4.15741;13.50925;-17.19916;,
 -0.08329;13.50925;-17.19916;,
 2.91534;10.51062;-17.19916;,
 -0.08329;13.50925;-17.19916;,
 -0.08329;9.26855;-17.19916;,
 -0.08329;13.50925;-17.19916;,
 -3.08192;10.51062;-17.19916;,
 -0.08329;13.50925;-17.19916;,
 -4.32399;13.50925;-17.19916;,
 -0.08329;13.50925;-17.19916;,
 -3.08192;16.50788;-17.19916;,
 -0.08329;13.50925;-17.19916;,
 -0.08329;17.74996;-17.19916;,
 -0.08329;13.50925;-59.34888;,
 -0.08329;14.17249;-59.34888;,
 0.38568;13.97823;-59.34888;,
 -0.08329;13.50925;-59.34888;,
 0.57994;13.50925;-59.34888;,
 -0.08329;13.50925;-59.34888;,
 0.38568;13.04028;-59.34888;,
 -0.08329;13.50925;-59.34888;,
 -0.08329;12.84603;-59.34888;,
 -0.08329;13.50925;-59.34888;,
 -0.55227;13.04028;-59.34888;,
 -0.08329;13.50925;-59.34888;,
 -0.74652;13.50925;-59.34888;,
 -0.08329;13.50925;-59.34888;,
 -0.55227;13.97823;-59.34888;,
 -0.08329;13.50925;-59.34888;,
 -0.08329;14.17249;-59.34888;,
 4.52144;18.11400;-42.37505;,
 -0.08329;20.02134;-42.37505;,
 6.42878;13.50925;-42.37505;,
 4.52144;8.90451;-42.37505;,
 -0.08329;6.99717;-42.37505;,
 -4.68803;8.90451;-42.37505;,
 -6.59536;13.50925;-42.37505;,
 -4.68803;18.11400;-42.37505;,
 -0.08329;20.02134;-42.37505;,
 -0.08329;20.02134;-34.12297;,
 4.52144;18.11400;-34.12297;,
 6.42878;13.50925;-34.12297;,
 4.52144;8.90451;-34.12297;,
 -0.08329;6.99717;-34.12297;,
 -4.68803;8.90451;-34.12297;,
 -6.59536;13.50925;-34.12297;,
 -4.68803;18.11400;-34.12297;,
 -0.08329;20.02134;-34.12297;,
 -0.08329;16.18941;-19.65069;,
 1.81186;15.40441;-19.65069;,
 2.59686;13.50925;-19.65069;,
 1.81186;11.61410;-19.65069;,
 -0.08329;10.82910;-19.65069;,
 -1.97845;11.61410;-19.65069;,
 -2.76345;13.50925;-19.65069;,
 -1.97845;15.40441;-19.65069;,
 -0.08329;16.18941;-19.65069;,
 -0.08329;13.50926;50.48640;,
 2.30058;15.89313;50.48640;,
 -0.08329;16.88057;50.48640;,
 -0.08329;13.50926;50.48640;,
 3.28802;13.50925;50.48640;,
 -0.08329;13.50926;50.48640;,
 2.30058;11.12538;50.48640;,
 -0.08329;13.50926;50.48640;,
 -0.08329;10.13794;50.48640;,
 -0.08329;13.50926;50.48640;,
 -2.46717;11.12538;50.48640;,
 -0.08329;13.50926;50.48640;,
 -3.45460;13.50926;50.48640;,
 -0.08329;13.50926;50.48640;,
 -2.46717;15.89313;50.48640;,
 -0.08329;13.50926;50.48640;,
 -0.08329;16.88057;50.48640;,
 -0.08329;13.50926;18.47023;,
 -0.08329;16.84710;18.47023;,
 2.27692;15.86947;18.47023;,
 -0.08329;13.50926;18.47023;,
 3.25456;13.50926;18.47023;,
 -0.08329;13.50926;18.47023;,
 2.27692;11.14904;18.47023;,
 -0.08329;13.50926;18.47023;,
 -0.08329;10.17141;18.47023;,
 -0.08329;13.50926;18.47023;,
 -2.44351;11.14904;18.47023;,
 -0.08329;13.50926;18.47023;,
 -3.42114;13.50926;18.47023;,
 -0.08329;13.50926;18.47023;,
 -2.44351;15.86946;18.47023;,
 -0.08329;13.50926;18.47023;,
 -0.08329;16.84710;18.47023;,
 2.65786;16.25041;21.00460;,
 -0.08329;17.38583;21.00460;,
 3.79329;13.50926;21.00460;,
 2.65786;10.76810;21.00460;,
 -0.08329;9.63268;21.00460;,
 -2.82445;10.76810;21.00460;,
 -3.95987;13.50926;21.00460;,
 -2.82445;16.25040;21.00460;,
 -0.08329;17.38583;21.00460;,
 -0.08329;17.38583;25.11445;,
 2.65786;16.25041;25.11445;,
 3.79329;13.50925;25.11445;,
 2.65786;10.76810;25.11445;,
 -0.08329;9.63268;25.11445;,
 -2.82445;10.76810;25.11445;,
 -3.95987;13.50926;25.11445;,
 -2.82445;16.25040;25.11445;,
 -0.08329;17.38583;25.11445;,
 -0.08329;16.88057;26.02427;,
 2.30058;15.89313;26.02427;,
 3.28802;13.50925;26.02427;,
 2.30058;11.12538;26.02427;,
 -0.08329;10.13794;26.02427;,
 -2.46717;11.12538;26.02427;,
 -3.45460;13.50926;26.02427;,
 -2.46717;15.89313;26.02427;,
 -0.08329;16.88057;26.02427;,
 -0.08329;13.48550;59.14920;,
 -0.08329;7.35173;59.14920;,
 4.25393;9.14827;59.14920;,
 6.05047;13.48550;59.14920;,
 4.25393;17.82272;59.14920;,
 -0.08329;19.61926;59.14920;,
 -4.42051;17.82272;59.14920;,
 -6.21705;13.48550;59.14920;,
 -4.42051;9.14827;59.14920;,
 4.23025;9.17195;58.24472;,
 4.25393;9.14827;59.14920;,
 -0.08329;7.35173;59.14920;,
 -0.08329;7.38522;58.24472;,
 -0.08329;7.96154;58.27097;,
 3.82273;9.57946;58.27097;,
 6.01698;13.48550;58.24472;,
 6.05047;13.48550;59.14920;,
 4.23025;9.17195;58.24472;,
 3.82273;9.57946;58.27097;,
 5.44067;13.48550;58.27097;,
 4.23025;17.79904;58.24472;,
 4.25393;17.82272;59.14920;,
 6.01698;13.48550;58.24472;,
 5.44067;13.48550;58.27097;,
 3.82274;17.39153;58.27097;,
 -0.08329;19.58577;58.24472;,
 -0.08329;19.61926;59.14920;,
 4.23025;17.79904;58.24472;,
 3.82274;17.39153;58.27097;,
 -0.08329;19.00945;58.27097;,
 -4.39684;17.79904;58.24472;,
 -4.42051;17.82272;59.14920;,
 -0.08329;19.58577;58.24472;,
 -0.08329;19.00945;58.27097;,
 -3.98932;17.39153;58.27097;,
 -6.18356;13.48550;58.24472;,
 -6.21705;13.48550;59.14920;,
 -4.39684;17.79904;58.24472;,
 -3.98932;17.39153;58.27097;,
 -5.60725;13.48550;58.27097;,
 -4.39684;9.17195;58.24472;,
 -4.42051;9.14827;59.14920;,
 -6.18356;13.48550;58.24472;,
 -5.60725;13.48550;58.27097;,
 -3.98932;9.57946;58.27097;,
 -0.08329;7.38522;58.24472;,
 -0.08329;7.35173;59.14920;,
 -4.39684;9.17195;58.24472;,
 -3.98932;9.57946;58.27097;,
 -0.08329;7.96154;58.27097;,
 -0.08329;10.40107;49.46054;,
 -0.08329;13.48550;46.45244;,
 2.09772;11.30448;49.46054;,
 2.09772;11.30448;49.46054;,
 -0.08329;13.48550;46.45244;,
 3.00113;13.48550;49.46054;,
 3.00113;13.48550;49.46054;,
 -0.08329;13.48550;46.45244;,
 2.09772;15.66652;49.46054;,
 2.09772;15.66652;49.46054;,
 -0.08329;13.48550;46.45244;,
 -0.08329;16.56993;49.46054;,
 -0.08329;16.56993;49.46054;,
 -0.08329;13.48550;46.45244;,
 -2.26431;15.66652;49.46054;,
 -2.26431;15.66652;49.46054;,
 -0.08329;13.48550;46.45244;,
 -3.16771;13.48550;49.46054;,
 -3.16771;13.48550;49.46054;,
 -0.08329;13.48550;46.45244;,
 -2.26431;11.30448;49.46054;,
 -2.26431;11.30448;49.46054;,
 -0.08329;13.48550;46.45244;,
 -0.08329;10.40107;49.46054;;
 
 200;
 3;0,1,2;,
 4;2,3,4,0;,
 4;3,5,6,4;,
 3;5,7,6;,
 4;7,8,9,6;,
 3;10,11,12;,
 4;12,13,14,10;,
 4;13,15,16,14;,
 3;15,17,16;,
 4;15,18,19,17;,
 4;10,2,1,11;,
 4;12,11,1,0;,
 4;12,0,4,13;,
 4;13,4,6,15;,
 4;6,9,18,15;,
 4;9,8,19,18;,
 4;19,8,7,17;,
 4;16,17,7,5;,
 4;3,14,16,5;,
 4;2,10,14,3;,
 4;20,21,22,23;,
 4;21,24,25,22;,
 4;24,26,27,25;,
 4;26,28,29,27;,
 4;28,30,31,29;,
 4;30,32,33,31;,
 4;32,34,35,33;,
 4;34,36,37,35;,
 3;38,21,20;,
 3;39,24,21;,
 3;40,26,24;,
 3;41,28,26;,
 3;42,30,28;,
 3;43,32,30;,
 3;44,34,32;,
 3;45,36,34;,
 3;46,23,22;,
 3;47,22,25;,
 3;48,25,27;,
 3;49,27,29;,
 3;50,29,31;,
 3;51,31,33;,
 3;52,33,35;,
 3;53,35,37;,
 3;54,55,56;,
 4;56,57,58,54;,
 4;57,59,60,58;,
 3;59,61,60;,
 4;61,62,63,60;,
 3;64,65,66;,
 4;66,67,68,64;,
 4;67,69,70,68;,
 3;69,71,70;,
 4;69,72,73,71;,
 4;64,56,55,65;,
 4;66,65,55,54;,
 4;66,54,58,67;,
 4;67,58,60,69;,
 4;60,63,72,69;,
 4;63,62,73,72;,
 4;73,62,61,71;,
 4;70,71,61,59;,
 4;57,68,70,59;,
 4;56,64,68,57;,
 3;74,75,76;,
 3;77,78,75;,
 3;79,80,78;,
 3;81,82,80;,
 3;83,84,82;,
 3;85,86,84;,
 3;87,88,86;,
 3;89,90,88;,
 3;91,92,93;,
 3;94,93,95;,
 3;96,95,97;,
 3;98,97,99;,
 3;100,99,101;,
 3;102,101,103;,
 3;104,103,105;,
 3;106,105,107;,
 4;108,93,92,109;,
 4;110,95,93,108;,
 4;111,97,95,110;,
 4;112,99,97,111;,
 4;113,101,99,112;,
 4;114,103,101,113;,
 4;115,105,103,114;,
 4;116,107,105,115;,
 4;117,118,108,109;,
 4;118,119,110,108;,
 4;119,120,111,110;,
 4;120,121,112,111;,
 4;121,122,113,112;,
 4;122,123,114,113;,
 4;123,124,115,114;,
 4;124,125,116,115;,
 4;126,76,75,127;,
 4;126,127,118,117;,
 4;127,75,78,128;,
 4;127,128,119,118;,
 4;128,78,80,129;,
 4;128,129,120,119;,
 4;129,80,82,130;,
 4;129,130,121,120;,
 4;130,82,84,131;,
 4;130,131,122,121;,
 4;131,84,86,132;,
 4;131,132,123,122;,
 4;132,86,88,133;,
 4;132,133,124,123;,
 4;133,88,90,134;,
 4;133,134,125,124;,
 3;135,136,137;,
 3;138,139,136;,
 3;140,141,139;,
 3;142,143,141;,
 3;144,145,143;,
 3;146,147,145;,
 3;148,149,147;,
 3;150,151,149;,
 3;152,153,154;,
 3;155,154,156;,
 3;157,156,158;,
 3;159,158,160;,
 3;161,160,162;,
 3;163,162,164;,
 3;165,164,166;,
 3;167,166,168;,
 4;169,154,153,170;,
 4;171,156,154,169;,
 4;172,158,156,171;,
 4;173,160,158,172;,
 4;174,162,160,173;,
 4;175,164,162,174;,
 4;176,166,164,175;,
 4;177,168,166,176;,
 4;178,179,169,170;,
 4;179,180,171,169;,
 4;180,181,172,171;,
 4;181,182,173,172;,
 4;182,183,174,173;,
 4;183,184,175,174;,
 4;184,185,176,175;,
 4;185,186,177,176;,
 4;187,137,136,188;,
 4;187,188,179,178;,
 4;188,136,139,189;,
 4;188,189,180,179;,
 4;189,139,141,190;,
 4;189,190,181,180;,
 4;190,141,143,191;,
 4;190,191,182,181;,
 4;191,143,145,192;,
 4;191,192,183,182;,
 4;192,145,147,193;,
 4;192,193,184,183;,
 4;193,147,149,194;,
 4;193,194,185,184;,
 4;194,149,151,195;,
 4;194,195,186,185;,
 3;196,197,198;,
 3;196,198,199;,
 3;196,199,200;,
 3;196,200,201;,
 3;196,201,202;,
 3;196,202,203;,
 3;196,203,204;,
 3;196,204,197;,
 4;205,206,207,208;,
 4;205,208,209,210;,
 4;211,212,206,213;,
 4;211,213,214,215;,
 4;216,217,212,218;,
 4;216,218,219,220;,
 4;221,222,217,223;,
 4;221,223,224,225;,
 4;226,227,222,228;,
 4;226,228,229,230;,
 4;231,232,227,233;,
 4;231,233,234,235;,
 4;236,237,232,238;,
 4;236,238,239,240;,
 4;241,242,237,243;,
 4;241,243,244,245;,
 3;246,247,248;,
 4;246,248,210,209;,
 3;249,250,251;,
 4;249,251,215,214;,
 3;252,253,254;,
 4;252,254,220,219;,
 3;255,256,257;,
 4;255,257,225,224;,
 3;258,259,260;,
 4;258,260,230,229;,
 3;261,262,263;,
 4;261,263,235,234;,
 3;264,265,266;,
 4;264,266,240,239;,
 3;267,268,269;,
 4;267,269,245,244;;
 
 MeshMaterialList {
  12;
  200;
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
  Material {
   0.800000;0.062400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.116000;0.536800;0.062400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.021961;0.316863;0.021961;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.056800;0.056800;0.056800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.316800;0.316800;0.316800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.696800;0.680800;0.238400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.558400;0.558400;0.558400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.674510;0.536471;0.655686;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.495686;0.360784;0.241569;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "1695732_s.jpg";
   }
  }
  Material {
   0.031373;0.185098;0.050196;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.345098;0.059608;0.037647;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  134;
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;-0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.707108;0.707106;0.000000;,
  0.707108;-0.707106;-0.000000;,
  0.000000;-1.000000;0.000000;,
  -0.707108;-0.707105;0.000000;,
  -1.000000;-0.000001;0.000000;,
  0.000000;0.000008;-1.000000;,
  0.000000;-0.000000;1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.364652;0.880345;-0.303350;,
  0.880346;0.364650;-0.303350;,
  0.880346;-0.364650;-0.303350;,
  0.364647;-0.880347;-0.303350;,
  -0.364647;-0.880347;-0.303351;,
  -0.880347;-0.364649;-0.303350;,
  -0.880347;0.364649;-0.303350;,
  0.382683;0.923880;0.000000;,
  0.923880;0.382682;0.000000;,
  0.923880;-0.382682;-0.000000;,
  0.382682;-0.923880;-0.000000;,
  -0.382682;-0.923880;0.000000;,
  -0.923880;-0.382682;0.000000;,
  -0.923880;0.382682;0.000000;,
  0.329867;0.796368;-0.506938;,
  0.796368;0.329866;-0.506937;,
  0.796369;-0.329866;-0.506937;,
  0.329866;-0.796369;-0.506937;,
  -0.329866;-0.796369;-0.506937;,
  -0.796369;-0.329866;-0.506937;,
  -0.796369;0.329866;-0.506937;,
  0.375511;0.906563;-0.192707;,
  0.906563;0.375511;-0.192707;,
  0.906563;-0.375510;-0.192707;,
  0.375509;-0.906563;-0.192707;,
  -0.375509;-0.906563;-0.192707;,
  -0.906563;-0.375510;-0.192707;,
  -0.906562;0.375511;-0.192707;,
  0.382684;0.923879;0.000000;,
  0.923880;0.382683;0.000000;,
  0.923880;-0.382683;-0.000000;,
  0.382682;-0.923880;-0.000000;,
  -0.382682;-0.923880;0.000000;,
  -0.923880;-0.382682;0.000000;,
  -0.923879;0.382684;0.000000;,
  0.382686;0.923878;0.000000;,
  0.923880;0.382684;0.000000;,
  0.923880;-0.382684;-0.000000;,
  0.382685;-0.923879;-0.000000;,
  -0.382684;-0.923879;-0.000000;,
  -0.923880;-0.382683;0.000000;,
  -0.923879;0.382684;0.000000;,
  0.277817;-0.670708;-0.687727;,
  -0.018849;0.045506;-0.998786;,
  -0.045505;0.018849;-0.998786;,
  -0.045505;-0.018849;-0.998786;,
  -0.018849;-0.045506;-0.998786;,
  0.018849;-0.045506;-0.998786;,
  0.045506;-0.018849;-0.998786;,
  0.045506;0.018849;-0.998786;,
  0.382460;-0.923339;-0.034191;,
  0.923340;-0.382460;-0.034184;,
  0.923339;0.382460;-0.034183;,
  0.382460;0.923339;-0.034188;,
  -0.382460;0.923339;-0.034188;,
  -0.923339;0.382460;-0.034184;,
  -0.923340;-0.382460;-0.034187;,
  0.670708;-0.277817;-0.687727;,
  0.670708;0.277817;-0.687727;,
  0.277817;0.670708;-0.687727;,
  -0.277817;0.670708;-0.687728;,
  -0.670709;0.277816;-0.687727;,
  -0.670708;-0.277816;-0.687727;,
  0.000000;0.999490;0.031939;,
  0.000000;-0.731055;-0.682319;,
  0.000000;-0.384616;-0.923077;,
  0.000000;0.066519;-0.997785;,
  0.000000;-0.316228;-0.948683;,
  0.000000;-0.989950;-0.141420;,
  0.000000;-0.986676;0.162696;,
  0.000000;-0.645942;0.763386;,
  0.000000;0.037709;0.999289;,
  0.000000;0.425797;0.904819;,
  -0.707108;0.707106;0.000000;,
  0.000000;0.000000;1.000000;,
  -0.000004;0.000009;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000004;0.000009;-1.000000;,
  0.000000;0.995743;0.092176;,
  0.000000;0.039579;-0.999216;,
  0.000000;-0.046158;-0.998934;,
  0.000000;0.059042;-0.998256;,
  0.000000;-0.353598;-0.935397;,
  0.000000;-0.289659;-0.957130;,
  0.000000;-0.990665;-0.136315;,
  0.000000;-0.600356;0.799733;,
  0.000000;0.033459;0.999440;,
  0.000000;0.123005;0.992406;,
  -0.364652;0.880345;-0.303350;,
  -0.382683;0.923880;0.000000;,
  0.371723;0.897419;0.237616;,
  0.897419;0.371722;0.237616;,
  0.897419;-0.371722;0.237616;,
  0.371722;-0.897419;0.237616;,
  -0.371722;-0.897419;0.237616;,
  -0.897419;-0.371722;0.237615;,
  -0.897419;0.371722;0.237616;,
  -0.329867;0.796368;-0.506938;,
  -0.371723;0.897419;0.237616;,
  -0.375513;0.906562;-0.192707;,
  -0.382685;0.923879;0.000000;,
  0.340486;0.822000;0.456492;,
  0.822001;0.340484;0.456493;,
  0.822001;-0.340484;0.456493;,
  0.340483;-0.822001;0.456493;,
  -0.340483;-0.822001;0.456493;,
  -0.822001;-0.340483;0.456493;,
  -0.822001;0.340484;0.456492;,
  -0.382686;0.923878;0.000000;,
  -0.340486;0.822001;0.456491;,
  -0.382460;-0.923339;-0.034191;,
  0.018849;0.045506;-0.998786;,
  0.370745;-0.895057;-0.247834;,
  0.895057;-0.370745;-0.247834;,
  0.895057;0.370745;-0.247834;,
  0.370745;0.895057;-0.247833;,
  -0.370745;0.895057;-0.247833;,
  -0.895057;0.370744;-0.247834;,
  -0.895057;-0.370744;-0.247834;,
  -0.277817;-0.670708;-0.687728;,
  -0.370745;-0.895057;-0.247834;;
  200;
  3;0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  3;1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  3;1,1,1;,
  4;1,1,1,1;,
  4;76,76,76,76;,
  4;77,77,77,77;,
  4;78,78,78,78;,
  4;79,79,79,79;,
  4;80,80,80,80;,
  4;81,81,81,81;,
  4;82,82,82,82;,
  4;83,83,83,83;,
  4;84,84,84,84;,
  4;85,85,85,85;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;0,0,0,0;,
  4;5,5,5,5;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,8,8,8;,
  4;86,86,86,86;,
  3;2,2,2;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;87,87,87;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;9,9,9;,
  3;88,88,88;,
  3;11,11,11;,
  3;11,11,11;,
  3;89,89,89;,
  3;11,11,11;,
  3;11,11,11;,
  3;90,90,90;,
  3;0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  3;1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  3;1,1,1;,
  4;1,1,1,1;,
  4;91,91,91,91;,
  4;92,92,92,92;,
  4;93,93,93,93;,
  4;94,94,94,94;,
  4;95,95,95,95;,
  4;96,96,96,96;,
  4;97,97,97,97;,
  4;98,98,98,98;,
  4;99,99,99,99;,
  4;100,100,100,100;,
  3;10,10,10;,
  3;10,10,10;,
  3;2,2,2;,
  3;10,10,10;,
  3;10,10,10;,
  3;2,2,2;,
  3;10,10,10;,
  3;10,10,10;,
  3;11,11,11;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;11,11,11;,
  4;13,13,13,13;,
  4;14,14,14,14;,
  4;15,15,15,15;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;18,18,18,18;,
  4;19,19,19,19;,
  4;101,101,101,101;,
  4;20,20,20,20;,
  4;21,21,21,21;,
  4;22,22,22,22;,
  4;23,23,23,23;,
  4;24,24,24,24;,
  4;25,25,25,25;,
  4;26,26,26,26;,
  4;102,102,102,102;,
  4;27,27,27,27;,
  4;103,103,103,103;,
  4;28,28,28,28;,
  4;104,104,104,104;,
  4;29,29,29,29;,
  4;105,105,105,105;,
  4;30,30,30,30;,
  4;106,106,106,106;,
  4;31,31,31,31;,
  4;107,107,107,107;,
  4;32,32,32,32;,
  4;108,108,108,108;,
  4;33,33,33,33;,
  4;109,109,109,109;,
  4;110,110,110,110;,
  4;111,111,111,111;,
  3;10,10,10;,
  3;10,10,10;,
  3;2,2,2;,
  3;10,10,10;,
  3;10,10,10;,
  3;2,2,2;,
  3;2,2,2;,
  3;10,10,10;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;36,36,36,36;,
  4;37,37,37,37;,
  4;38,38,38,38;,
  4;39,39,39,39;,
  4;40,40,40,40;,
  4;112,112,112,112;,
  4;41,41,41,41;,
  4;42,42,42,42;,
  4;43,43,43,43;,
  4;44,44,44,44;,
  4;45,45,45,45;,
  4;46,46,46,46;,
  4;47,47,47,47;,
  4;113,113,113,113;,
  4;48,48,48,48;,
  4;114,114,114,114;,
  4;49,49,49,49;,
  4;115,115,115,115;,
  4;50,50,50,50;,
  4;116,116,116,116;,
  4;51,51,51,51;,
  4;117,117,117,117;,
  4;52,52,52,52;,
  4;118,118,118,118;,
  4;53,53,53,53;,
  4;119,119,119,119;,
  4;54,54,54,54;,
  4;120,120,120,120;,
  4;121,121,121,121;,
  4;122,122,122,122;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;2,2,2;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  4;63,63,63,63;,
  4;56,56,56,56;,
  4;64,64,64,64;,
  4;57,57,57,57;,
  4;65,65,65,65;,
  4;58,58,58,58;,
  4;66,66,66,66;,
  4;59,59,59,59;,
  4;67,67,67,67;,
  4;60,60,60,60;,
  4;68,68,68,68;,
  4;61,61,61,61;,
  4;69,69,69,69;,
  4;62,62,62,62;,
  4;123,123,123,123;,
  4;124,124,124,124;,
  3;55,55,55;,
  4;125,125,125,125;,
  3;70,70,70;,
  4;126,126,126,126;,
  3;71,71,71;,
  4;127,127,127,127;,
  3;72,72,72;,
  4;128,128,128,128;,
  3;73,73,73;,
  4;129,129,129,129;,
  3;74,74,74;,
  4;130,130,130,130;,
  3;75,75,75;,
  4;131,131,131,131;,
  3;132,132,132;,
  4;133,133,133,133;;
 }
 MeshTextureCoords {
  270;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.125000;0.000000;,
  0.125000;1.000000;,
  0.000000;1.000000;,
  0.250000;0.000000;,
  0.250000;1.000000;,
  0.375000;0.000000;,
  0.375000;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.625000;0.000000;,
  0.625000;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.875000;0.000000;,
  0.875000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.062500;0.000000;,
  0.187500;0.000000;,
  0.312500;0.000000;,
  0.437500;0.000000;,
  0.562500;0.000000;,
  0.687500;0.000000;,
  0.812500;0.000000;,
  0.937500;0.000000;,
  0.062500;1.000000;,
  0.187500;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.812500;1.000000;,
  0.937500;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.062500;0.000000;,
  0.125000;0.000000;,
  0.000000;0.000000;,
  0.187500;0.000000;,
  0.250000;0.000000;,
  0.312500;0.000000;,
  0.375000;0.000000;,
  0.437500;0.000000;,
  0.500000;0.000000;,
  0.562500;0.000000;,
  0.625000;0.000000;,
  0.687500;0.000000;,
  0.750000;0.000000;,
  0.812500;0.000000;,
  0.875000;0.000000;,
  0.937500;0.000000;,
  1.000000;0.000000;,
  0.062500;1.000000;,
  0.000000;1.000000;,
  0.125000;1.000000;,
  0.187500;1.000000;,
  0.250000;1.000000;,
  0.312500;1.000000;,
  0.375000;1.000000;,
  0.437500;1.000000;,
  0.500000;1.000000;,
  0.562500;1.000000;,
  0.625000;1.000000;,
  0.687500;1.000000;,
  0.750000;1.000000;,
  0.812500;1.000000;,
  0.875000;1.000000;,
  0.937500;1.000000;,
  1.000000;1.000000;,
  0.125000;0.814054;,
  0.000000;0.814054;,
  0.250000;0.814054;,
  0.375000;0.814054;,
  0.500000;0.814054;,
  0.625000;0.814054;,
  0.750000;0.814054;,
  0.875000;0.814054;,
  1.000000;0.814054;,
  0.000000;0.180452;,
  0.125000;0.180452;,
  0.250000;0.180452;,
  0.375000;0.180452;,
  0.500000;0.180452;,
  0.625000;0.180452;,
  0.750000;0.180452;,
  0.875000;0.180452;,
  1.000000;0.180452;,
  0.000000;0.064006;,
  0.125000;0.064006;,
  0.250000;0.064006;,
  0.375000;0.064006;,
  0.500000;0.064006;,
  0.625000;0.064006;,
  0.750000;0.064006;,
  0.875000;0.064006;,
  1.000000;0.064006;,
  0.062500;0.000000;,
  0.125000;0.000000;,
  0.000000;0.000000;,
  0.187500;0.000000;,
  0.250000;0.000000;,
  0.312500;0.000000;,
  0.375000;0.000000;,
  0.437500;0.000000;,
  0.500000;0.000000;,
  0.562500;0.000000;,
  0.625000;0.000000;,
  0.687500;0.000000;,
  0.750000;0.000000;,
  0.812500;0.000000;,
  0.875000;0.000000;,
  0.937500;0.000000;,
  1.000000;0.000000;,
  0.062500;1.000000;,
  0.000000;1.000000;,
  0.125000;1.000000;,
  0.187500;1.000000;,
  0.250000;1.000000;,
  0.312500;1.000000;,
  0.375000;1.000000;,
  0.437500;1.000000;,
  0.500000;1.000000;,
  0.562500;1.000000;,
  0.625000;1.000000;,
  0.687500;1.000000;,
  0.750000;1.000000;,
  0.812500;1.000000;,
  0.875000;1.000000;,
  0.937500;1.000000;,
  1.000000;1.000000;,
  0.125000;0.905031;,
  0.000000;0.905031;,
  0.250000;0.905031;,
  0.375000;0.905031;,
  0.500000;0.905031;,
  0.625000;0.905031;,
  0.750000;0.905031;,
  0.875000;0.905031;,
  1.000000;0.905031;,
  0.000000;0.374944;,
  0.125000;0.374944;,
  0.250000;0.374944;,
  0.375000;0.374944;,
  0.500000;0.374944;,
  0.625000;0.374944;,
  0.750000;0.374944;,
  0.875000;0.374944;,
  1.000000;0.374944;,
  0.000000;0.275552;,
  0.125000;0.275552;,
  0.250000;0.275552;,
  0.375000;0.275552;,
  0.500000;0.275552;,
  0.625000;0.275552;,
  0.750000;0.275552;,
  0.875000;0.275552;,
  1.000000;0.275552;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.119322;0.909146;,
  0.125000;1.000000;,
  0.000000;1.000000;,
  0.005678;0.909146;,
  0.006214;0.900584;,
  0.118786;0.900584;,
  0.238643;0.909146;,
  0.250000;1.000000;,
  0.125000;0.909146;,
  0.125000;0.900584;,
  0.237573;0.900584;,
  0.357965;0.909146;,
  0.375000;1.000000;,
  0.244322;0.909146;,
  0.243786;0.900584;,
  0.356359;0.900584;,
  0.477286;0.909146;,
  0.500000;1.000000;,
  0.363643;0.909146;,
  0.362573;0.900584;,
  0.475146;0.900584;,
  0.596608;0.909146;,
  0.625000;1.000000;,
  0.482965;0.909146;,
  0.481359;0.900584;,
  0.593932;0.900584;,
  0.715930;0.909146;,
  0.750000;1.000000;,
  0.602286;0.909146;,
  0.600146;0.900584;,
  0.712719;0.900584;,
  0.835251;0.909146;,
  0.875000;1.000000;,
  0.721608;0.909146;,
  0.718932;0.900584;,
  0.831505;0.900584;,
  0.954573;0.909146;,
  1.000000;1.000000;,
  0.840930;0.909146;,
  0.837719;0.900584;,
  0.950292;0.900584;,
  0.047175;0.245207;,
  0.062500;0.000000;,
  0.077825;0.245207;,
  0.125000;0.245207;,
  0.125000;0.000000;,
  0.155651;0.245207;,
  0.202825;0.245207;,
  0.187500;0.000000;,
  0.233476;0.245207;,
  0.280651;0.245207;,
  0.250000;0.000000;,
  0.311302;0.245208;,
  0.358476;0.245208;,
  0.312500;0.000000;,
  0.389127;0.245208;,
  0.436302;0.245208;,
  0.375000;0.000000;,
  0.466953;0.245207;,
  0.514127;0.245207;,
  0.437500;0.000000;,
  0.544778;0.245208;,
  0.591953;0.245208;,
  0.500000;0.000000;,
  0.622604;0.245207;;
 }
}
