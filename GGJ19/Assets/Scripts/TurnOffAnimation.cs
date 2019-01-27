using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnOffAnimation : MonoBehaviour
{
	
	private Renderer rend;
	
	private void Start(){
		rend = gameObject.GetComponent<Renderer>();
	}
	
	/*private void Update(){
		if (Input.GetKeyDown(KeyCode.Space)){
			TurnOff();
		}
	}*/
	
	public void TurnOff(){
		StartCoroutine("TurnOffLoop");
	}
	
	private IEnumerator TurnOffLoop(){
		int time = 20;
		float frac = 1f / time;
		for (int i = 0; i < time + 1; i++){
			rend.material.SetFloat("_EffectStatus", i * frac);
			yield return null;
		}
		Debug.Log("bye from the coroutine");
		Application.Quit();
		yield return null;
	}
	
}
