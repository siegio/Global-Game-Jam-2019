using UnityEngine;
using UnityEngine.UI;

public class GameController : MonoBehaviour
{
	public static GameObject selectedThrowableObject;
	public GameObject defaultThrowableObject;
	public GameObject attachableBalloon;
	public float thingsSpawnHeight = 3.0f;
	private GameObject spawnedObject;
	private Rigidbody spawnedRigidbody;
	public int houseHitCount = 0;
	public static GameController instance;

	public ItemChooseButton[] objectChoiceButtons;

	// Start is called before the first frame update
	void Start() {
		instance = this;
		UpdateButtons();
		if (FunkyMusicMixer.instance != null) {
			FunkyMusicMixer.instance.DisableOrchestra();
			FunkyMusicMixer.instance.DisableSynth();
		}
	}

	public void UpdateButtons() {
		for (int i = 0; i < objectChoiceButtons.Length; i++) {
			objectChoiceButtons[i].gameObject.SetActive(houseHitCount >= ThrowsToUnlockButton(i));
			(objectChoiceButtons[i].GetComponentInChildren(typeof(Text)) as Text).text = objectChoiceButtons[i].itemName;
			objectChoiceButtons[i].isActive = true;
			if (houseHitCount >= ThrowsToUnlockButton(i - 1) && houseHitCount < ThrowsToUnlockButton(i)) {
				objectChoiceButtons[i].gameObject.SetActive(true);
				objectChoiceButtons[i].isActive = false;
				(objectChoiceButtons[i].GetComponentInChildren(typeof(Text)) as Text).text = "??? hit the house " + (ThrowsToUnlockButton(i) - houseHitCount) + "x more!";
			}
		}
	}

	private int ThrowsToUnlockButton(int buttonIndex) {
		return buttonIndex * 1;
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
