<?php

use Illuminate\Database\Seeder;
use App\Customer;

class CustomerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Customer::create([
            'name' => 'Aqib Muaddam',
            'address' => 'Balikpapan',
            'phone' => '085250708300',
            'email' => 'aqib@customer.com'
        ]);

        Customer::create([
            'name' => 'Akmal Erfami Army',
            'address' => 'Tanah Grogot',
            'phone' => '085250708301',
            'email' => 'akmal@customer.com'
        ]);

        Customer::create([
            'name' => 'Rahmat Ramadhan',
            'address' => 'Samarinda',
            'phone' => '0850708302',
            'email' => 'madan@customer.com'
        ]);
    }
}
