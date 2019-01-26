// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34755,y:32179,varname:node_9361,prsc:2|normal-3544-OUT,emission-6732-OUT,custl-5994-OUT;n:type:ShaderForge.SFN_NormalVector,id:7529,x:32885,y:32972,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:6064,x:32885,y:33126,varname:node_6064,prsc:2;n:type:ShaderForge.SFN_Dot,id:6246,x:33075,y:33035,varname:node_6246,prsc:2,dt:0|A-7529-OUT,B-6064-OUT;n:type:ShaderForge.SFN_Append,id:4705,x:33257,y:33035,varname:node_4705,prsc:2|A-6246-OUT,B-536-OUT;n:type:ShaderForge.SFN_Vector1,id:536,x:33075,y:33185,varname:node_536,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:1443,x:33430,y:33035,ptovrint:False,ptlb:CellShading Ramp,ptin:_CellShadingRamp,varname:node_1443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2140fd725a9782840b8c57c8f5eca3f0,ntxv:0,isnm:False|UVIN-4705-OUT;n:type:ShaderForge.SFN_Tex2d,id:7369,x:33431,y:32067,ptovrint:False,ptlb:Albedo Texture,ptin:_AlbedoTexture,varname:node_7369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-2191-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2191,x:33204,y:31948,varname:node_2191,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5294,x:33637,y:32964,varname:node_5294,prsc:2|A-3127-RGB,B-1443-RGB;n:type:ShaderForge.SFN_Multiply,id:6262,x:33639,y:32626,varname:node_6262,prsc:2|A-6609-RGB,B-942-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:942,x:33432,y:32648,varname:node_942,prsc:2;n:type:ShaderForge.SFN_LightColor,id:6609,x:33432,y:32505,varname:node_6609,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6694,x:33828,y:32770,varname:node_6694,prsc:2|A-6262-OUT,B-5294-OUT;n:type:ShaderForge.SFN_VertexColor,id:3127,x:33432,y:32840,varname:node_3127,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5994,x:34444,y:32468,varname:node_5994,prsc:2|A-1607-OUT,B-2544-OUT;n:type:ShaderForge.SFN_Tex2d,id:5457,x:33412,y:31754,ptovrint:False,ptlb:Normal Texture,ptin:_NormalTexture,varname:node_5457,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-2191-UVOUT;n:type:ShaderForge.SFN_Color,id:3688,x:33430,y:32255,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_3688,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1607,x:33628,y:32233,varname:node_1607,prsc:2|A-7369-RGB,B-3688-RGB;n:type:ShaderForge.SFN_Lerp,id:3544,x:33632,y:31754,varname:node_3544,prsc:2|A-1045-OUT,B-5457-RGB,T-9127-OUT;n:type:ShaderForge.SFN_Slider,id:9127,x:33255,y:31641,ptovrint:False,ptlb:Normal Intensity,ptin:_NormalIntensity,varname:node_9127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector3,id:1045,x:33412,y:31518,varname:node_1045,prsc:2,v1:0.5,v2:0.5,v3:1;n:type:ShaderForge.SFN_Tex2d,id:8529,x:33894,y:31928,ptovrint:False,ptlb:Emissive Texture,ptin:_EmissiveTexture,varname:node_8529,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-2191-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6732,x:34097,y:32156,varname:node_6732,prsc:2|A-8529-RGB,B-5224-RGB;n:type:ShaderForge.SFN_Color,id:5224,x:33894,y:32126,ptovrint:False,ptlb:Emissive Color,ptin:_EmissiveColor,varname:node_5224,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_AmbientLight,id:5012,x:33828,y:32585,varname:node_5012,prsc:2;n:type:ShaderForge.SFN_Add,id:2544,x:34121,y:32697,varname:node_2544,prsc:2|A-2946-OUT,B-6694-OUT;n:type:ShaderForge.SFN_Slider,id:9043,x:33671,y:32506,ptovrint:False,ptlb:Ambient Intensity,ptin:_AmbientIntensity,varname:node_9043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:2946,x:34019,y:32494,varname:node_2946,prsc:2|A-9043-OUT,B-5012-RGB;proporder:1443-7369-3688-5457-9127-8529-5224-9043;pass:END;sub:END;*/

Shader "Shader Forge/ToonShaderV1" {
    Properties {
        _CellShadingRamp ("CellShading Ramp", 2D) = "white" {}
        _AlbedoTexture ("Albedo Texture", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _NormalTexture ("Normal Texture", 2D) = "bump" {}
        _NormalIntensity ("Normal Intensity", Range(0, 1)) = 0
        _EmissiveTexture ("Emissive Texture", 2D) = "black" {}
        _EmissiveColor ("Emissive Color", Color) = (1,1,1,1)
        _AmbientIntensity ("Ambient Intensity", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CellShadingRamp; uniform float4 _CellShadingRamp_ST;
            uniform sampler2D _AlbedoTexture; uniform float4 _AlbedoTexture_ST;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            uniform float4 _Color;
            uniform float _NormalIntensity;
            uniform sampler2D _EmissiveTexture; uniform float4 _EmissiveTexture_ST;
            uniform float4 _EmissiveColor;
            uniform float _AmbientIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _NormalTexture_var = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(i.uv0, _NormalTexture)));
                float3 normalLocal = lerp(float3(0.5,0.5,1),_NormalTexture_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _EmissiveTexture_var = tex2D(_EmissiveTexture,TRANSFORM_TEX(i.uv0, _EmissiveTexture));
                float3 emissive = (_EmissiveTexture_var.rgb*_EmissiveColor.rgb);
                float4 _AlbedoTexture_var = tex2D(_AlbedoTexture,TRANSFORM_TEX(i.uv0, _AlbedoTexture));
                float2 node_4705 = float2(dot(i.normalDir,lightDirection),0.0);
                float4 _CellShadingRamp_var = tex2D(_CellShadingRamp,TRANSFORM_TEX(node_4705, _CellShadingRamp));
                float3 finalColor = emissive + ((_AlbedoTexture_var.rgb*_Color.rgb)*((_AmbientIntensity*UNITY_LIGHTMODEL_AMBIENT.rgb)+((_LightColor0.rgb*attenuation)*(i.vertexColor.rgb*_CellShadingRamp_var.rgb))));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CellShadingRamp; uniform float4 _CellShadingRamp_ST;
            uniform sampler2D _AlbedoTexture; uniform float4 _AlbedoTexture_ST;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            uniform float4 _Color;
            uniform float _NormalIntensity;
            uniform sampler2D _EmissiveTexture; uniform float4 _EmissiveTexture_ST;
            uniform float4 _EmissiveColor;
            uniform float _AmbientIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _NormalTexture_var = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(i.uv0, _NormalTexture)));
                float3 normalLocal = lerp(float3(0.5,0.5,1),_NormalTexture_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _AlbedoTexture_var = tex2D(_AlbedoTexture,TRANSFORM_TEX(i.uv0, _AlbedoTexture));
                float2 node_4705 = float2(dot(i.normalDir,lightDirection),0.0);
                float4 _CellShadingRamp_var = tex2D(_CellShadingRamp,TRANSFORM_TEX(node_4705, _CellShadingRamp));
                float3 finalColor = ((_AlbedoTexture_var.rgb*_Color.rgb)*((_AmbientIntensity*UNITY_LIGHTMODEL_AMBIENT.rgb)+((_LightColor0.rgb*attenuation)*(i.vertexColor.rgb*_CellShadingRamp_var.rgb))));
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
