<?php
namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Http;

class ContactForm extends Component
{
    public $name;
    public $email;
    public $subject;
    public $message;

    protected $rules = [
        'name'    => 'required|string|max:255',
        'email'   => 'required|email|max:255',
        'subject' => 'required|string|max:255',
        'message' => 'required|string',
    ];

    public function submit()
    {
        // Validate the form
        $validatedData = $this->validate();

        // Prepare the Telegram message
        $telegramMessage = "New Contact Form Submission:\n";
        $telegramMessage .= "Name: {$validatedData['name']}\n";
        $telegramMessage .= "Email: {$validatedData['email']}\n";
        $telegramMessage .= "Subject: {$validatedData['subject']}\n";
        $telegramMessage .= "Message: {$validatedData['message']}";

        // Telegram API URL and Token
        $telegramToken = env('TELEGRAM_BOT_TOKEN');
        $chatId = env('TELEGRAM_CHAT_ID');

        // Send the message to Telegram
        Http::post("https://api.telegram.org/bot{$telegramToken}/sendMessage", [
            'chat_id' => $chatId,
            'text'    => $telegramMessage,
        ]);

        // Flash success message
        session()->flash('message', 'Thank you for contacting us! Your message has been sent to our team.');

        // Clear form fields
        $this->reset();
    }

    public function render()
    {
        return view('livewire.contact-form');
    }
}
