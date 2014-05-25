using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class ConstantMovement : MonoBehaviour {

	public float movementRate = 1f;

	private void Update ()
	{
		rigidbody.MovePosition (transform.position + Vector3.right * movementRate * Time.deltaTime);
	}
}
