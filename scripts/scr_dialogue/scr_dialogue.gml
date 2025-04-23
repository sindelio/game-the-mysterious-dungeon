function create_dialog(_messages){
  if (instance_exists(obj_dialog)) return
    
  var _inst = instance_create_depth(0, 0, 0, obj_dialog)
  _inst.messages = _messages
  _inst.current_message = 0
}

text_colors = {
  "Level up": c_yellow,
  "NPC": c_yellow,
  "Player": c_aqua
}

msgs_npc1 = [
  {
    type: "NPC",
    name: "Old miner",
    msg: "Hello, you must be the knight sent by the kingdom." 
  },
  {
    type: "Player",
    name: "Knight",
    msg: "That's right, please call me Cyan."
  },
  {
    type: "NPC",
    name: "Old miner",
    msg: "I'm Moria, an old miner who lives nearby."
  },
  {
    type: "NPC",
    name: "Old miner Moria",
    msg: "This place appeared out of nowhere a few days ago, and it's crawling with monsters."
  },
  {
    type: "NPC",
    name: "Old miner Moria",
    msg: "Be careful on your investigation."
  },
  {
    type: "Player",
    name: "Cyan",
    msg: "Thank you, I will."
  }
]

msgs_npc2 = [
  {
    type: "NPC",
    name: "Guardkeeper",
    msg: "Welcome sir knight, I'm guarding the entrance, the name's Singh." 
  },
  {
    type: "Player",
    name: "Aqua Knight",
    msg: "Thank you Singh. Please call me Cyan."
  },
  {
    type: "Player",
    name: "Aqua Knight",
    msg: "I will enter to investigate."
  },
  {
    type: "NPC",
    name: "Guardkeeper Singh",
    msg: "The place is crawling with monsters, be careful on your way sir." 
  },
]