#!/bin/bash

# List of quotes
quotes=(
	"Integrity is the most valuable and respected quality of leadership. Always keep your word.",
	"Leadership is the ability to get extraordinary achievement from ordinary people",
	"Leaders set high standards. Refuse to tolerate mediocrity or poor performance",
	"Clarity is the key to effective leadership. What are your goals?",
	"The best leaders have a high Consideration Factor. They really care about their people",
	"Leaders think and talk about the solutions. Followers think and talk about the problems.",
	"The key responsibility of leadership is to think about the future. No one else can do it for you.",
	"The effective leader recognizes that they are more dependent on their people than they are on them. Walk softly.",
	"Leaders never use the word failure. They look upon setbacks as learning experiences.",
	"Practice Golden Rule Management in everything you do. Manage others the way you would like to be managed.",
	"Superior leaders are willing to admit a mistake and cut their losses. Be willing to admit that you’ve changed your mind. Don’t persist when the original decision turns out to be a poor one.",
	"Leaders are anticipatory thinkers. They consider all consequences of their behaviors before they act.",
	"The true test of leadership is how well you function in a crisis.",
	"Leaders concentrate single-mindedly on one thing– the most important thing, and they stay at it until it’s complete.",
	"The three ‘C’s’ of leadership are Consideration, Caring, and Courtesy. Be polite to everyone.",
	"Respect is the key determinant of high-performance leadership. How much people respect you determines how well they perform.",
	"Leadership is more who you are than what you do.",
	"Entrepreneurial leadership requires the ability to move quickly when opportunity presents itself.",
	"Leaders are innovative, entrepreneurial, and future oriented. They focus on getting the job done.",
	"Leaders are never satisfied; they continually strive to be better."
)

# Get a random number from 1 to length of array
randNum=$((1 + RANDOM % ${#quotes[@]} ))

# Read out random quote
say ${quotes[$randNum]}