// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-85-OUT;n:type:ShaderForge.SFN_Tex2d,id:6935,x:32151,y:32666,ptovrint:False,ptlb:SkyTexture,ptin:_SkyTexture,varname:node_6935,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fe4de35984f5ca744a82a01c743abef3,ntxv:0,isnm:False|UVIN-5228-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:1970,x:32151,y:32867,ptovrint:False,ptlb:CloudTexture,ptin:_CloudTexture,varname:node_1970,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2a051c2bd7c58f64ba2f0186d34faeb1,ntxv:0,isnm:False|UVIN-1640-UVOUT;n:type:ShaderForge.SFN_Time,id:7016,x:31496,y:32864,varname:node_7016,prsc:2;n:type:ShaderForge.SFN_Panner,id:1640,x:31965,y:32867,varname:node_1640,prsc:2,spu:1,spv:0|UVIN-5228-UVOUT,DIST-8177-OUT;n:type:ShaderForge.SFN_TexCoord,id:5228,x:31812,y:32671,varname:node_5228,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:85,x:32471,y:32752,varname:node_85,prsc:2|A-6935-RGB,B-1970-RGB,T-1970-A;n:type:ShaderForge.SFN_Multiply,id:8177,x:31796,y:33053,varname:node_8177,prsc:2|A-7016-T,B-4364-OUT;n:type:ShaderForge.SFN_Slider,id:4364,x:31418,y:33143,ptovrint:False,ptlb:CloudSpeed,ptin:_CloudSpeed,varname:node_4364,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;proporder:6935-1970-4364;pass:END;sub:END;*/

Shader "Shader Forge/Shader_Sky" {
    Properties {
        _SkyTexture ("SkyTexture", 2D) = "white" {}
        _CloudTexture ("CloudTexture", 2D) = "white" {}
        _CloudSpeed ("CloudSpeed", Range(-3, 3)) = 0
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform sampler2D _SkyTexture; uniform float4 _SkyTexture_ST;
            uniform sampler2D _CloudTexture; uniform float4 _CloudTexture_ST;
            uniform float _CloudSpeed;
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
                float4 _SkyTexture_var = tex2D(_SkyTexture,TRANSFORM_TEX(i.uv0, _SkyTexture));
                float4 node_7016 = _Time;
                float2 node_1640 = (i.uv0+(node_7016.g*_CloudSpeed)*float2(1,0));
                float4 _CloudTexture_var = tex2D(_CloudTexture,TRANSFORM_TEX(node_1640, _CloudTexture));
                float3 emissive = lerp(_SkyTexture_var.rgb,_CloudTexture_var.rgb,_CloudTexture_var.a);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
