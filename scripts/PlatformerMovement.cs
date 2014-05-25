using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class PlatformerMovement : MonoBehaviour {

	public float movementRate = 5f;

	private void Update ()
	{
		rigidbody.MovePosition (transform.position + Vector3.right * Input.GetAxis ("Horizontal") * movementRate);
	}
}
