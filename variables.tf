variable "name" { 
  type = string 
  description = "Name of the scheduled event"
}

variable "queue_arn" { 
  type = string 
  description = "Queue to receive the messages. If blank a new queue will be created."
}

variable "tags" {
  type = map(string)
  description = "Map of tags to apply to the EventBridge event"
}

variable "schedule" { 
  type = string 
  description = "AWS event bridge schedule expression"
}

variable "payload" {
  type = string
  description = "Payload to send when the event triggers. Default = empty json object"
  default = ""
}