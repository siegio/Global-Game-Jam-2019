using UnityEngine;

public class KillWhenOutOfBounds : MonoBehaviour
{

    void Update() {
        if (gameObject.transform.position.y < -100) {
			Destroy(gameObject);
		}
    }
}
