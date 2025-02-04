<?php


namespace App\Livewire;
use App\Models\Tour;
use Livewire\Component;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Http;
use App\Models\EmailBooking;  // or whatever Model you will use

class EmailTourBookingForm extends Component
{
    // Form fields
    public $first_name;
    public $last_name;
    public $email;
    public $phone;
    public $hotel_to_pickup;
    public $departure_date;
    public $number_adults = 0;
    public $number_children = 0;
   
    public $tour_name="" ;



    // Validation rules
    protected $rules = [
        'first_name'       => 'required|string|max:100',
        'last_name'        => 'required|string|max:100',
        'email'            => 'required|email',
        'phone'            => 'required|string|max:20',
        'hotel_to_pickup'  => 'required|string|max:255',
        'departure_date'   => 'required|date',  // Make sure to handle date format properly
        'number_adults'    => 'required|integer|min:0|max:10',
        'number_children'  => 'nullable|integer|min:0|max:10',
        'tour_name'        => 'required|string',
       
    ];

    // Mount method to initialize component with tour details
    public function mount($slug)
    {
        // Fetch the tour based on the slug
        $tour = Tour::where('slug', $slug)->firstOrFail();

        // Set the tour details
        $this->tour_name = $tour->name;
        //$this->tour_code = $tour->code; // Assuming 'code' is the column name for tour_code
    }

    public function submit()
    {
        // Validate and save the booking
        $validatedData = $this->validate();
    
        $booking = EmailBooking::create($validatedData);
    
        // Prepare the message
        $message = "New Booking Submitted:\n";
        $message .= "Name: {$booking->first_name} {$booking->last_name}\n";
        $message .= "Email: {$booking->email}\n";
        $message .= "Phone: {$booking->phone}\n";
        $message .= "Hotel Pickup: {$booking->hotel_to_pickup}\n";
        $message .= "Departure Date: {$booking->departure_date}\n";
        $message .= "Adults: {$booking->number_adults}\n";
        $message .= "Children: {$booking->number_children}\n";
        $message .= "Tour: {$booking->tour_name} ";
    
        // Telegram API URL and Token
        $telegramToken = env('TELEGRAM_BOT_TOKEN');
        $chatId = env('TELEGRAM_CHAT_ID');
    
        // Send the message to Telegram
        Http::post("https://api.telegram.org/bot{$telegramToken}/sendMessage", [
            'chat_id' => $chatId,
            'text' => $message,
        ]);
    
        // Flash success message
        session()->flash('message', 'Booking successfully submitted and Telegram notification sent.');
    
        $this->reset();
    }
    
    

    public function render()
    {
        return view('livewire.email-tour-booking-form');
        
    }
}

