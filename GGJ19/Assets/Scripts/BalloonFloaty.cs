
using UnityEngine;

public class BalloonFloaty : MonoBehaviour
{
	private float timePassed = 0f;
	private Vector3 originalPosition;

    // Start is called before the first frame update
    void Start()
    {
		originalPosition = transform.position;
    }

    // Update is called once per frame
    void Update() {
		if (transform.position.y > 200) {
			Destroy(gameObject);
		}
		timePassed += Time.deltaTime * 2f;
		//-1 / (x + 1) + 1 + ((x / 2) ^ 5)
		transform.position = originalPosition + new Vector3(0, (-1 / (timePassed + 1) + 1) * 2 + (Mathf.Pow(timePassed / 1.5f, 5)), 0);
    }
}
