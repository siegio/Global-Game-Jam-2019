using UnityEngine;

public class SoundRoundRobin : MonoBehaviour
{
    public AudioClip[] audioClipsAwake;
    public AudioClip[] audioClips;

    private void Start()
    {
        int i = Random.Range(0, audioClipsAwake.Length);
        GetComponent<AudioSource>().pitch = Random.Range(0.75f, 1.25f);
        GetComponent<AudioSource>().PlayOneShot(audioClipsAwake[i]);
    }

    private void OnCollisionEnter(Collision collision)
    {
		if (collision.collider.tag == "HouseCollider") {
			int i = Random.Range(0, audioClips.Length);
			GetComponent<AudioSource>().pitch = Random.Range(0.75f, 1.25f);
			GetComponent<AudioSource>().PlayOneShot(audioClips[i]);
			GameController.instance.houseHitCount++;
			GameController.instance.UpdateButtons();
		}
    }
}