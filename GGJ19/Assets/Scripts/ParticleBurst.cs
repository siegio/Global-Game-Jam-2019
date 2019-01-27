using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleBurst : MonoBehaviour
{
    
	public ParticleSystem particle;
	
	private void OnCollisionEnter(Collision collision){
		if (collision.gameObject.tag == "HouseCollider"){
			//particle.Clear();
			particle.time = 0;
			particle.Play();
			Debug.Log("should do particle");
		}
	}
	
}
