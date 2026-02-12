# project-g

my [godot](https://godotengine.org/) 4.6 template

### TODO

- Add audio controller
  - configs for audio effects (mute) gonna need to build an scene for all (audio, audio 3d, audio 2d)
- set export configs for web as default:

![WhatsApp Image 2026-02-05 at 17 39 10](https://github.com/user-attachments/assets/0e3cb034-59a4-407f-b9a9-e195002e429f)

- adjust fsm guide and base scripts with new methods names following what was done on project-z (pretty much add state in places like _on_enter, so it will be _on_state_enter). goal is be a bit more clear when comparing with default godot methods (in the past I thought _on_exit was a default method, but it is a fsm method. well)
