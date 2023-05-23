To receive a message, the client has to call the SQS API to check for new messages (i.e the messages are not pushed from server to the client). 

There are 2 ways to poll for new messages from SQS:

1. **Short Polling:** 
	- Short polling returns immediately, even if the message queue being polled is empty.
	- For short polling, we call the `recieve()` method of `QueueMessagingTemplate` in an infinite loop that regularly polls the queue. 
	- The `recieve()` method returns empty if there are no messages in the queue.

2. Long Polling:
	- Long polling does not return a response until a message arrives in the message queue, or the long poll times out. We do this with the `@SQSListener` annotation.

In most cases, Amazon SQS long polling is preferable to short polling since long polling requests let the queue consumers receive messages as soon as they arrive in the queue while reducing the number of empty responses returned.

And thus, the cost of SQS service, since they are calculated by API calls.


We annotate a method with the `@SqsListener` annotation for subscribing to a queue.
The `@SqsListener` annotation adds polling behavior to the method and also provides support for serializing and converting the received message to a Java object, as shown here:

```java
@Log4j2
@Service 
public class MessageListener() {

	@SqsListener(value = "testQueue", deletionPolicy = SqsMessageDeletionPolicy.ON_SUCCESS)
	public void recieveMessage(String message, @Header("Sending") String senderId) {
		
		logger.info("message received {}{}", senderId, message);
			
	}
}
```
In this example, the SQS message payload is serialized and passed to our `receiveMessage()` method. We have also defined the deletion policy `ON_SUCCESS`, meaning that the message is deleted from the queue when successfully processed to avoid 


