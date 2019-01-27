﻿using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class KillElectricityButton : ItemChooseButton {

	public TurnOffAnimation turnOffAnimation;

	public override void OnSelect(BaseEventData eventData) {
	}

	// Start is called before the first frame update
	void Start() {
		(gameObject.GetComponent(typeof(Button)) as Button).onClick.AddListener(() => { turnOffAnimation.TurnOff(); });
	}

    // Update is called once per frame
    void Update()
    {
        
    }
}
