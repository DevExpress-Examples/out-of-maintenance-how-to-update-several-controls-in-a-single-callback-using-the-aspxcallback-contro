<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to update several controls in a single callback using the ASPxCallback control
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1371/)**
<!-- run online end -->


<p>This example demonstrates how several controls can be easily updated using a single callback, which can be sent by the ASPxCallback control. The updated controls can be located anywhere within the page.</p><p>In this sample, a callback is initiated by the ASPxCallback control's client PerformCallback method, and it is handled on the server within the Callback event handler. </p><p>Controls that doesn't provide any client method to manipulate their properties and values on the client side (such as a standard TextBox control used within this sample) can be updated by rendering their updated markup on the server, sending it to the client, and manually inserting this markup into their container controls.<br />
So, for the TextBox1 editor, the markup is rendered on the server by using the ASPxCallback's GetRenderResult method, and it is passed to the client using the JSProperties property of the ASPxCallback. On the client side, this markup is assigned to the innerHTML property of the editor's container table cell element ('editorContainer').</p><p>If a web control allows its value to be manipulated on the client (such as the ASPxTextBox editor), it can be easily updated by sending the new value from the server to the client through the ASPxCallback's JSProperties property, and assigning this value on the client using the control's client-side API (the ASPxTextBox editor's client SetText method is used in this sample).</p><p>The ASPxLoadingPanel control is used within this example to visualize the callback handling process.</p>

<br/>


