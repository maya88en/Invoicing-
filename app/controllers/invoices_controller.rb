class InvoicesController < ApplicationController
    def new
       @invoice = current_user.invoices.new
       @invoice.line_items.build
    end
 
    def create
       @invoice = current_user.invoices.new invoice_params
       @invoice.save 
    end
 end