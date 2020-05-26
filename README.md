## Goal
This is an app to teach how to implement a chat in RoRails.
We'll be using WebSockets and ActionCable

## How to
### 1. Create a ChatRoom model and a Message model referencing User and ChatRoom
`rails g model ChatRoom name`
`rails g model message chatroom:references content user:references`
### 2.

## Troubleshooting
