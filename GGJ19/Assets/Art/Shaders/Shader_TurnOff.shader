// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32936,y:32754,varname:node_3138,prsc:2|emission-9745-OUT,alpha-1520-OUT;n:type:ShaderForge.SFN_Slider,id:6971,x:31490,y:33059,ptovrint:False,ptlb:EffectStatus,ptin:_EffectStatus,varname:node_6971,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:5931,x:31647,y:32810,varname:node_5931,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Subtract,id:7683,x:31856,y:32904,varname:node_7683,prsc:2|A-5931-V,B-4107-OUT;n:type:ShaderForge.SFN_Vector1,id:4107,x:31647,y:32969,varname:node_4107,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Abs,id:1077,x:32025,y:32904,varname:node_1077,prsc:2|IN-7683-OUT;n:type:ShaderForge.SFN_Step,id:1479,x:32207,y:32904,varname:node_1479,prsc:2|A-1077-OUT,B-6354-OUT;n:type:ShaderForge.SFN_OneMinus,id:5197,x:32025,y:33060,varname:node_5197,prsc:2|IN-7461-OUT;n:type:ShaderForge.SFN_Add,id:7461,x:31856,y:33070,varname:node_7461,prsc:2|A-4107-OUT,B-6971-OUT;n:type:ShaderForge.SFN_Subtract,id:8938,x:31856,y:32762,varname:node_8938,prsc:2|A-5931-U,B-4107-OUT;n:type:ShaderForge.SFN_Abs,id:6075,x:32025,y:32762,varname:node_6075,prsc:2|IN-8938-OUT;n:type:ShaderForge.SFN_Step,id:6900,x:32207,y:32762,varname:node_6900,prsc:2|A-6075-OUT,B-2009-OUT;n:type:ShaderForge.SFN_OneMinus,id:2009,x:32025,y:32608,varname:node_2009,prsc:2|IN-6971-OUT;n:type:ShaderForge.SFN_Vector1,id:1342,x:32025,y:33226,varname:node_1342,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Max,id:6354,x:32207,y:33060,varname:node_6354,prsc:2|A-5197-OUT,B-1342-OUT;n:type:ShaderForge.SFN_Multiply,id:9745,x:32378,y:32762,varname:node_9745,prsc:2|A-6900-OUT,B-1479-OUT;n:type:ShaderForge.SFN_Add,id:436,x:32535,y:32904,varname:node_436,prsc:2|A-8663-OUT,B-6823-OUT;n:type:ShaderForge.SFN_OneMinus,id:8663,x:32378,y:32904,varname:node_8663,prsc:2|IN-9745-OUT;n:type:ShaderForge.SFN_Clamp01,id:1520,x:32704,y:32904,varname:node_1520,prsc:2|IN-436-OUT;n:type:ShaderForge.SFN_Multiply,id:6823,x:32025,y:33317,varname:node_6823,prsc:2|A-6971-OUT,B-1045-OUT;n:type:ShaderForge.SFN_Vector1,id:1045,x:31824,y:33317,varname:node_1045,prsc:2,v1:2.5;proporder:6971;pass:END;sub:END;*/

Shader "Shader Forge/Shader_TurnOff" {
    Properties {
        _EffectStatus ("EffectStatus", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _EffectStatus;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_4107 = 0.5;
                float node_5197 = (1.0 - (node_4107+_EffectStatus));
                float node_1342 = 0.01;
                float node_9745 = (step(abs((i.uv0.r-node_4107)),(1.0 - _EffectStatus))*step(abs((i.uv0.g-node_4107)),max(node_5197,node_1342)));
                float3 emissive = float3(node_9745,node_9745,node_9745);
                float3 finalColor = emissive;
                return fixed4(finalColor,saturate(((1.0 - node_9745)+(_EffectStatus*2.5))));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
