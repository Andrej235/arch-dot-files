#!/bin/bash
playerctl metadata --format '{"title":"{{title}}", "artist": "{{artist}}", "currentPosition": {{position}}, "totalDuration": {{mpris:length}}, "playerStatus": "{{status}}", "artUrl":"{{mpris:artUrl}}"}'
