using UnityEngine;

public class GameController : MonoBehaviour
{
	public static GameObject selectedThrowableObject;
	public GameObject defaultThrowableObject;
	public GameObject attachableBalloon;
	public float thingsSpawnHeight = 3.0f;
	private GameObject spawnedObject;
	private Rigidbody spawnedRigidbody;

	// Start is called before the first frame update
	void Start()
    {
        
    }

    // Update is called once per frame
    void Update() {
		if (Input.GetButtonDown("Fire1")) { // lmb
			spawnedObject = Instantiate(selectedThrowableObject ?? defaultThrowableObject, GetMousePosition(), Quaternion.identity);
			spawnedRigidbody = (spawnedObject.GetComponent(typeof(Rigidbody)) as Rigidbody);
			if (spawnedRigidbody == null) {
				spawnedRigidbody = spawnedObject.GetComponentInChildren(typeof(Rigidbody)) as Rigidbody;
			}
			spawnedRigidbody.useGravity = false;
			spawnedObject.AddComponent(typeof(KillWhenOutOfBounds));
		}
		else if (spawnedRigidbody != null) {
			if (Input.GetButtonUp("Fire1")) {
				spawnedRigidbody.useGravity = true;
				spawnedObject = null;
				spawnedRigidbody = null;
			}
			else {
				// break
				spawnedRigidbody.AddForce(-4 * spawnedRigidbody.velocity);
				// accellerate
				Vector3 force = (GetMousePosition() - spawnedRigidbody.transform.position);
				force *= 10 + force.sqrMagnitude;
				if (force.magnitude > 200) {
					force *= 200 / force.magnitude;
				}
				spawnedRigidbody.AddForce(force);
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
