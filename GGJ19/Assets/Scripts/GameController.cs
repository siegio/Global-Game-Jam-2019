using UnityEngine;

public class GameController : MonoBehaviour
{
	public static GameObject selectedThrowableObject;
	public GameObject defaultThrowableObject;
	public GameObject attachableBalloon;
	public float thingsSpawnHeight = 3.0f;
	private GameObject spawnedObject;

	// Start is called before the first frame update
	void Start()
    {
        
    }

    // Update is called once per frame
    void Update() {
		if (Input.GetButtonDown("Fire1")) { // lmb
			spawnedObject = Instantiate(selectedThrowableObject ?? defaultThrowableObject, GetMousePosition(), Quaternion.identity);
			(spawnedObject.GetComponent(typeof(Rigidbody)) as Rigidbody).useGravity = false;
		}
		else if (spawnedObject != null) {
			if (Input.GetButtonUp("Fire1")) {
				(spawnedObject.GetComponent(typeof(Rigidbody)) as Rigidbody).useGravity = true;
				spawnedObject = null;
			}
			else {
				Rigidbody rbody = spawnedObject.GetComponent(typeof(Rigidbody)) as Rigidbody;
				// break
				rbody.AddForce(-4 * rbody.velocity);
				// accellerate
				Vector3 force = (GetMousePosition() - spawnedObject.transform.position);
				force *= 10 + force.sqrMagnitude;
				if (force.magnitude > 200) {
					force *= 200 / force.magnitude;
				}
				rbody.AddForce(force);
			}
		}

		if (Input.GetButtonDown("Fire2")) { // rmb
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit;
			if (Physics.Raycast(ray, out hit)) {
				if (hit.rigidbody != null && !hit.rigidbody.isKinematic) {
					GameObject balloon = Instantiate(attachableBalloon, hit.point, Quaternion.identity);
					hit.collider.gameObject.transform.parent = balloon.transform;
					hit.rigidbody.useGravity = false;
					hit.rigidbody.isKinematic = true;
				}
			}
		}
	}

	private Vector3 GetMousePosition() {
		Vector3 p = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 10.0f));
		Vector3 p2 = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 5.0f));
		Vector3 pointDirection = (p - p2).normalized;

		var plane = new Plane((Vector3.up - pointDirection) / 2, Vector3.up * 5);
		plane.Raycast(new Ray(Camera.main.gameObject.transform.position, pointDirection), out float distance);

		return Camera.main.gameObject.transform.position + distance * pointDirection;
		//return Camera.main.gameObject.transform.position + 2 * pointDirection;
	}
}
