using UnityEngine;
using System.Collections;

public class Jump : MonoBehaviour {

	public KeyCode jumpKey = KeyCode.Space;
	public float jumpForce = 5f;

	private int jumpCount = 0;
	public int maxJumps = 2;

	private void ResetJumpCount()
	{
		jumpCount = 0;
	}

	private void OnCollisionEnter (Collision c)
	{
		if (c.collider.CompareTag("Ground"))
		{
			ResetJumpCount();
		}
	}

	private void Update ()
	{
		if (Input.GetKeyDown(jumpKey) && jumpCount < maxJumps)
		{
			rigidbody.velocity = new Vector3 (rigidbody.velocity.x,
			                                  jumpForce,
			                                  rigidbody.velocity.z);
			jumpCount++;
		}
	}
}
