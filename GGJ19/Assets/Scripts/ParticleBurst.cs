using UnityEngine;

public class ParticleBurst : MonoBehaviour
{
    
	public ParticleSystem particle;
	
	private void OnCollisionEnter(Collision collision) {
		if (collision.gameObject.tag == "HouseCollider") {
			particle.time = 0;
			particle.Play();
		}
	}
	
}
