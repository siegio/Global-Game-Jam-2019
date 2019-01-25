using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class gameController : MonoBehaviour
{
	public GameObject throwableBall;
	public GameObject attachableBalloon;
	public float thingsSpawnHeight = 3.0f;

	// Start is called before the first frame update
	void Start()
    {
        
    }

    // Update is called once per frame
    void Update() {
		if (Input.GetButtonDown("Fire1")) {
			Vector3 p = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 10.0f));
			Vector3 p2 = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 5.0f));
			Vector3 pointDirection = p - p2;
			float cameraY = Camera.main.gameObject.transform.position.y;
			float targetY = thingsSpawnHeight;
			float yDiff = targetY - cameraY;
			float amount = yDiff / pointDirection.y;

			Instantiate(throwableBall, Camera.main.gameObject.transform.position + amount * pointDirection, Quaternion.identity);
		}

		if (Input.GetButtonDown("Fire2")) {
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit;
			if (Physics.Raycast(ray, out hit)) {
				if (!hit.rigidbody.isKinematic) {
					GameObject balloon = Instantiate(attachableBalloon, hit.point, Quaternion.identity);
					hit.collider.gameObject.transform.parent = balloon.transform;
					hit.rigidbody.useGravity = false;
				}
			}
		}
	}
}
